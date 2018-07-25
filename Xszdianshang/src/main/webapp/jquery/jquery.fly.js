/*! fly - v1.0.0 - 2015-03-23
* https://github.com/amibug/fly
* Copyright (c) 2015 wuyuedong; Licensed MIT */
(function ($) {
  $.fly = function (element, options) {
    // Ĭ��ֵ
    var defaults = {
      version: '1.0.0',
      autoPlay: true,
      vertex_Rtop: 20, // Ĭ�϶���߶�topֵ
      speed: 1.2,
      start: {}, // top, left, width, height
      end: {},
      onEnd: $.noop
    };

    var self = this,
      $element = $(element);

    /**
     * ��ʼ�������new��ʱ�򼴵���
     */
    self.init = function (options) {
      this.setOptions(options);
      !!this.settings.autoPlay && this.play();
    };

    /**
     * �����������
     */
    self.setOptions = function (options) {
      this.settings = $.extend(true, {}, defaults, options);
      var settings = this.settings,
        start = settings.start,
        end = settings.end;

      $element.css({marginTop: '0px', marginLeft: '0px', position: 'fixed'}).appendTo('body');
      // �˶��������иı��С
      if (end.width != null && end.height != null) {
        $.extend(true, start, {
          width: $element.width(),
          height: $element.height()
        });
      }
      // �˶��켣��ߵ�topֵ
      var vertex_top = Math.min(start.top, end.top) - Math.abs(start.left - end.left) / 3;
      if (vertex_top < settings.vertex_Rtop) {
        // ���ܳ����������յ�����˶����߶�������
        vertex_top = Math.min(settings.vertex_Rtop, Math.min(start.top, end.top));
      }

      /**
       * ======================================================
       * �˶��켣��ҳ���е�topֵ���Գ���ɺ��� y = a * x*x + b;
       * a = curvature
       * b = vertex_top
       * ======================================================
       */

      var distance = Math.sqrt(Math.pow(start.top - end.top, 2) + Math.pow(start.left - end.left, 2)),
        // Ԫ���ƶ�����
        steps = Math.ceil(Math.min(Math.max(Math.log(distance) / 0.05 - 75, 30), 100) / settings.speed),
        ratio = start.top == vertex_top ? 0 : -Math.sqrt((end.top - vertex_top) / (start.top - vertex_top)),
        vertex_left = (ratio * start.left - end.left) / (ratio - 1),
        // ������������ֶ���left==�յ�left������������Ϊ0����ֱ���˶���
        curvature = end.left == vertex_left ? 0 : (end.top - vertex_top) / Math.pow(end.left - vertex_left, 2);

      $.extend(true, settings, {
        count: -1, // ÿ������Ϊ-1
        steps: steps,
        vertex_left: vertex_left,
        vertex_top: vertex_top,
        curvature: curvature
      });
    };

    /**
     * ��ʼ�˶������Լ�����
     */
    self.play = function () {
      this.move();
    };

    /**
     * ��step�˶�
     */
    self.move = function () {
      var settings = this.settings,
        start = settings.start,
        count = settings.count,
        steps = settings.steps,
        end = settings.end;
      // ����left topֵ
      var left = start.left + (end.left - start.left) * count / steps,
        top = settings.curvature == 0 ? start.top + (end.top - start.top) * count / steps : settings.curvature * Math.pow(left - settings.vertex_left, 2) + settings.vertex_top;
      // �˶��������иı��С
      if (end.width != null && end.height != null) {
        var i = steps / 2,
          width = end.width - (end.width - start.width) * Math.cos(count < i ? 0 : (count - i) / (steps - i) * Math.PI / 2),
          height = end.height - (end.height - start.height) * Math.cos(count < i ? 0 : (count - i) / (steps - i) * Math.PI / 2);
        $element.css({width: width + "px", height: height + "px", "font-size": Math.min(width, height) + "px"});
      }
      $element.css({
        left: left + "px",
        top: top + "px"
      });
      settings.count++;
      // ��ʱ����
      var time = window.requestAnimationFrame($.proxy(this.move, this));
      if (count == steps) {
        window.cancelAnimationFrame(time);
        // fire callback
        settings.onEnd.apply(this);
      }
    };

    /**
     * ����
     */
    self.destroy = function(){
      $element.remove();
    };

    self.init(options);
  };

  // add the plugin to the jQuery.fn object
  $.fn.fly = function (options) {
    return this.each(function () {
      if (undefined == $(this).data('fly')) {
        $(this).data('fly', new $.fly(this, options));
      }
    });
  };
})(jQuery);