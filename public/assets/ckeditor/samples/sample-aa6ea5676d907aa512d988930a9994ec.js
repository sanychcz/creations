/**
 * Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
!function(){CKEDITOR.on("instanceReady",function(e){var t=e.editor,n=CKEDITOR.document.$.getElementsByName("ckeditor-sample-required-plugins"),i=n.length?CKEDITOR.dom.element.get(n[0]).getAttribute("content").split(","):[],o=[];if(i.length){for(var r=0;r<i.length;r++)t.plugins[i[r]]||o.push("<code>"+i[r]+"</code>");if(o.length){var a=CKEDITOR.dom.element.createFromHtml('<div class="warning"><span>To fully experience this demo, the '+o.join(", ")+" plugin"+(o.length>1?"s are":" is")+" required.</span>"+"</div>");a.insertBefore(t.container)}}})}();