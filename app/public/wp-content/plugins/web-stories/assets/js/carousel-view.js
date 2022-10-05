(()=>{var t={474:(t,e,i)=>{var o,r;void 0===(r="function"==typeof(o=function(){var t="undefined"!=typeof window?window:this,e=t.Glider=function(e,i){var o=this;if(e._glider)return e._glider;if(o.ele=e,o.ele.classList.add("glider"),o.ele._glider=o,o.opt=Object.assign({},{slidesToScroll:1,slidesToShow:1,resizeLock:!0,duration:.5,easing:function(t,e,i,o,r){return o*(e/=r)*e+i}},i),o.animate_id=o.page=o.slide=0,o.arrows={},o._opt=o.opt,o.opt.skipTrack)o.track=o.ele.children[0];else for(o.track=document.createElement("div"),o.ele.appendChild(o.track);1!==o.ele.children.length;)o.track.appendChild(o.ele.children[0]);o.track.classList.add("glider-track"),o.init(),o.resize=o.init.bind(o,!0),o.event(o.ele,"add",{scroll:o.updateControls.bind(o)}),o.event(t,"add",{resize:o.resize})},i=e.prototype;return i.init=function(t,e){var i=this,o=0,r=0;i.slides=i.track.children,[].forEach.call(i.slides,(function(t,e){t.classList.add("glider-slide"),t.setAttribute("data-gslide",e)})),i.containerWidth=i.ele.clientWidth;var s=i.settingsBreakpoint();if(e||(e=s),"auto"===i.opt.slidesToShow||void 0!==i.opt._autoSlide){var l=i.containerWidth/i.opt.itemWidth;i.opt._autoSlide=i.opt.slidesToShow=i.opt.exactWidth?l:Math.max(1,Math.floor(l))}"auto"===i.opt.slidesToScroll&&(i.opt.slidesToScroll=Math.floor(i.opt.slidesToShow)),i.itemWidth=i.opt.exactWidth?i.opt.itemWidth:i.containerWidth/i.opt.slidesToShow,[].forEach.call(i.slides,(function(t){t.style.height="auto",t.style.width=i.itemWidth+"px",o+=i.itemWidth,r=Math.max(t.offsetHeight,r)})),i.track.style.width=o+"px",i.trackWidth=o,i.isDrag=!1,i.preventClick=!1,i.opt.resizeLock&&i.scrollTo(i.slide*i.itemWidth,0),(s||e)&&(i.bindArrows(),i.buildDots(),i.bindDrag()),i.updateControls(),i.emit(t?"refresh":"loaded")},i.bindDrag=function(){var t=this;t.mouse=t.mouse||t.handleMouse.bind(t);var e=function(){t.mouseDown=void 0,t.ele.classList.remove("drag"),t.isDrag&&(t.preventClick=!0),t.isDrag=!1},i={mouseup:e,mouseleave:e,mousedown:function(e){e.preventDefault(),e.stopPropagation(),t.mouseDown=e.clientX,t.ele.classList.add("drag")},mousemove:t.mouse,click:function(e){t.preventClick&&(e.preventDefault(),e.stopPropagation()),t.preventClick=!1}};t.ele.classList.toggle("draggable",!0===t.opt.draggable),t.event(t.ele,"remove",i),t.opt.draggable&&t.event(t.ele,"add",i)},i.buildDots=function(){var t=this;if(t.opt.dots){if("string"==typeof t.opt.dots?t.dots=document.querySelector(t.opt.dots):t.dots=t.opt.dots,t.dots){t.dots.innerHTML="",t.dots.classList.add("glider-dots");for(var e=0;e<Math.ceil(t.slides.length/t.opt.slidesToShow);++e){var i=document.createElement("button");i.dataset.index=e,i.setAttribute("aria-label","Page "+(e+1)),i.setAttribute("role","tab"),i.className="glider-dot "+(e?"":"active"),t.event(i,"add",{click:t.scrollItem.bind(t,e,!0)}),t.dots.appendChild(i)}}}else t.dots&&(t.dots.innerHTML="")},i.bindArrows=function(){var t=this;t.opt.arrows?["prev","next"].forEach((function(e){var i=t.opt.arrows[e];i&&("string"==typeof i&&(i=document.querySelector(i)),i&&(i._func=i._func||t.scrollItem.bind(t,e),t.event(i,"remove",{click:i._func}),t.event(i,"add",{click:i._func}),t.arrows[e]=i))})):Object.keys(t.arrows).forEach((function(e){var i=t.arrows[e];t.event(i,"remove",{click:i._func})}))},i.updateControls=function(t){var e=this;t&&!e.opt.scrollPropagate&&t.stopPropagation();var i=e.containerWidth>=e.trackWidth;e.opt.rewind||(e.arrows.prev&&(e.arrows.prev.classList.toggle("disabled",e.ele.scrollLeft<=0||i),e.arrows.prev.classList.contains("disabled")?e.arrows.prev.setAttribute("aria-disabled",!0):e.arrows.prev.setAttribute("aria-disabled",!1)),e.arrows.next&&(e.arrows.next.classList.toggle("disabled",Math.ceil(e.ele.scrollLeft+e.containerWidth)>=Math.floor(e.trackWidth)||i),e.arrows.next.classList.contains("disabled")?e.arrows.next.setAttribute("aria-disabled",!0):e.arrows.next.setAttribute("aria-disabled",!1))),e.slide=Math.round(e.ele.scrollLeft/e.itemWidth),e.page=Math.round(e.ele.scrollLeft/e.containerWidth);var o=e.slide+Math.floor(Math.floor(e.opt.slidesToShow)/2),r=Math.floor(e.opt.slidesToShow)%2?0:o+1;1===Math.floor(e.opt.slidesToShow)&&(r=0),e.ele.scrollLeft+e.containerWidth>=Math.floor(e.trackWidth)&&(e.page=e.dots?e.dots.children.length-1:0),[].forEach.call(e.slides,(function(t,i){var s=t.classList,l=s.contains("visible"),a=e.ele.scrollLeft,n=e.ele.scrollLeft+e.containerWidth,d=e.itemWidth*i,c=d+e.itemWidth;[].forEach.call(s,(function(t){/^left|right/.test(t)&&s.remove(t)})),s.toggle("active",e.slide===i),o===i||r&&r===i?s.add("center"):(s.remove("center"),s.add([i<o?"left":"right",Math.abs(i-(i<o?o:r||o))].join("-")));var h=Math.ceil(d)>=Math.floor(a)&&Math.floor(c)<=Math.ceil(n);s.toggle("visible",h),h!==l&&e.emit("slide-"+(h?"visible":"hidden"),{slide:i})})),e.dots&&[].forEach.call(e.dots.children,(function(t,i){t.classList.toggle("active",e.page===i)})),t&&e.opt.scrollLock&&(clearTimeout(e.scrollLock),e.scrollLock=setTimeout((function(){clearTimeout(e.scrollLock),Math.abs(e.ele.scrollLeft/e.itemWidth-e.slide)>.02&&(e.mouseDown||e.trackWidth>e.containerWidth+e.ele.scrollLeft&&e.scrollItem(e.getCurrentSlide()))}),e.opt.scrollLockDelay||250))},i.getCurrentSlide=function(){var t=this;return t.round(t.ele.scrollLeft/t.itemWidth)},i.scrollItem=function(t,e,i){i&&i.preventDefault();var o=this,r=t;if(++o.animate_id,!0===e)t*=o.containerWidth,t=Math.round(t/o.itemWidth)*o.itemWidth;else{if("string"==typeof t){var s="prev"===t;if(t=o.opt.slidesToScroll%1||o.opt.slidesToShow%1?o.getCurrentSlide():o.slide,s?t-=o.opt.slidesToScroll:t+=o.opt.slidesToScroll,o.opt.rewind){var l=o.ele.scrollLeft;t=s&&!l?o.slides.length:!s&&l+o.containerWidth>=Math.floor(o.trackWidth)?0:t}}t=Math.max(Math.min(t,o.slides.length),0),o.slide=t,t=o.itemWidth*t}return o.scrollTo(t,o.opt.duration*Math.abs(o.ele.scrollLeft-t),(function(){o.updateControls(),o.emit("animated",{value:r,type:"string"==typeof r?"arrow":e?"dot":"slide"})})),!1},i.settingsBreakpoint=function(){var e=this,i=e._opt.responsive;if(i){i.sort((function(t,e){return e.breakpoint-t.breakpoint}));for(var o=0;o<i.length;++o){var r=i[o];if(t.innerWidth>=r.breakpoint)return e.breakpoint!==r.breakpoint&&(e.opt=Object.assign({},e._opt,r.settings),e.breakpoint=r.breakpoint,!0)}}var s=0!==e.breakpoint;return e.opt=Object.assign({},e._opt),e.breakpoint=0,s},i.scrollTo=function(e,i,o){var r=this,s=(new Date).getTime(),l=r.animate_id,a=function(){var n=(new Date).getTime()-s;r.ele.scrollLeft=r.ele.scrollLeft+(e-r.ele.scrollLeft)*r.opt.easing(0,n,0,1,i),n<i&&l===r.animate_id?t.requestAnimationFrame(a):(r.ele.scrollLeft=e,o&&o.call(r))};t.requestAnimationFrame(a)},i.removeItem=function(t){var e=this;e.slides.length&&(e.track.removeChild(e.slides[t]),e.refresh(!0),e.emit("remove"))},i.addItem=function(t){var e=this;e.track.appendChild(t),e.refresh(!0),e.emit("add")},i.handleMouse=function(t){var e=this;e.mouseDown&&(e.isDrag=!0,e.ele.scrollLeft+=(e.mouseDown-t.clientX)*(e.opt.dragVelocity||3.3),e.mouseDown=t.clientX)},i.round=function(t){var e=1/(this.opt.slidesToScroll%1||1);return Math.round(t*e)/e},i.refresh=function(t){this.init(!0,t)},i.setOption=function(t,e){var i=this;i.breakpoint&&!e?i._opt.responsive.forEach((function(e){e.breakpoint===i.breakpoint&&(e.settings=Object.assign({},e.settings,t))})):i._opt=Object.assign({},i._opt,t),i.breakpoint=0,i.settingsBreakpoint()},i.destroy=function(){var e=this,i=e.ele.cloneNode(!0),o=function(t){t.removeAttribute("style"),[].forEach.call(t.classList,(function(e){/^glider/.test(e)&&t.classList.remove(e)}))};i.children[0].outerHTML=i.children[0].innerHTML,o(i),[].forEach.call(i.getElementsByTagName("*"),o),e.ele.parentNode.replaceChild(i,e.ele),e.event(t,"remove",{resize:e.resize}),e.emit("destroy")},i.emit=function(e,i){var o=this,r=new t.CustomEvent("glider-"+e,{bubbles:!o.opt.eventPropagate,detail:i});o.ele.dispatchEvent(r)},i.event=function(t,e,i){var o=t[e+"EventListener"].bind(t);Object.keys(i).forEach((function(t){o(t,i[t])}))},e})?o.call(e,i,e,t):o)||(t.exports=r)}},e={};function __webpack_require__(i){var o=e[i];if(void 0!==o)return o.exports;var r=e[i]={exports:{}};return t[i](r,r.exports,__webpack_require__),r.exports}(()=>{"use strict";var t=__webpack_require__(474);t.prototype.scrollItem=function(t,e,i){if(void 0===i&&e?.target&&(i=e,e=!1),void 0===i)return!1;if(i&&i.preventDefault(),this.opt.slidesToScroll=Math.max(1,this.opt.slidesToScroll),this.opt.slidesToShow=Math.max(1,this.opt.slidesToShow),this.itemWidth===1/0){const t=i.target.parentElement.querySelector(".web-stories-list__carousel"),e=window.getComputedStyle(t.querySelector(".web-stories-list__story"));this.itemWidth=parseFloat(e.width)+(parseFloat(e.marginLeft)+parseFloat(e.marginRight))}const o=t;if(++this.animate_id,!0===e)t*=this.containerWidth,t=Math.round(t/this.itemWidth)*this.itemWidth;else{if("string"==typeof t){const e="prev"===t;if(t=this.opt.slidesToScroll%1||this.opt.slidesToShow%1?this.getCurrentSlide():isNaN(this.slide)?0:this.slide,e?t-=this.opt.slidesToScroll:t+=this.opt.slidesToScroll,this.opt.rewind){const i=this.ele.scrollLeft;t=e&&!i?this.slides.length:!e&&i+this.containerWidth>=Math.floor(this.trackWidth)?0:t}}t=Math.min(t,this.slides.length),this.slide=t,t=this.itemWidth*t}return this.scrollTo(t,this.opt.duration*Math.abs(this.ele.scrollLeft-t),(function(){this.updateControls(),this.emit("animated",{value:o,type:"string"==typeof o?"arrow":e?"dot":"slide"})})),!1};const e=t;(0,window.wp.domReady)((()=>{const t=document.querySelectorAll(".web-stories-list__carousel"),i=window.webStoriesCarouselSettings.config.isRTL||"rtl"===document.documentElement.getAttribute("dir");t.length&&Array.from(t).forEach((t=>{const o=t.dataset.id,r=i?{prev:`.${o} .glider-next`,next:`.${o} .glider-prev`}:{prev:`.${o} .glider-prev`,next:`.${o} .glider-next`},s=t.classList.contains("circles"),l=window.getComputedStyle(t.querySelector(".web-stories-list__story")),a=parseFloat(l.width)+(parseFloat(l.marginLeft)+parseFloat(l.marginRight));new e(t,s?{slidesToShow:"auto",slidesToScroll:"auto",itemWidth:a,duration:.25,scrollLock:!0,arrows:r}:{slidesToShow:1,slidesToScroll:1,scrollLock:!0,arrows:r,responsive:[{breakpoint:775,settings:{slidesToShow:"auto",slidesToScroll:"auto",itemWidth:a,duration:.25}}]})}))}))})()})();