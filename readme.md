# Pwn antgst

## Goal

For get the linux device root access.

## target

url `https://web.antgst.com/antgst/`

- framework use the `jeecg-boot`.

``` js
  window._CONFIG['domianURL'] = 'https://web.antgst.com/antgst';
    // window._CONFIG['domianURL'] = 'http://127.0.0.1:8080/jeecg-boot';
    window._CONFIG['casPrefixUrl'] = 'https://web.antgst.com/antgst';
      window._CONFIG['imgDomainURL'] = window._CONFIG['domianURL'] + '/sys/common/view';
      window._CONFIG['downloadUrl'] = window._CONFIG['domianURL'] + '/sys/common/download';
      window._CONFIG['pdfDomainURL'] =  window._CONFIG['domianURL'] + '/sys/common/pdf/pdfPreviewIframe';
```
