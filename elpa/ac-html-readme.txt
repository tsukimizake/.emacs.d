Configuration:
Add these lines
(add-to-list 'ac-sources 'ac-source-html-tag)
(add-to-list 'ac-sources 'ac-source-html-attribute)
(add-to-list 'ac-sources 'ac-source-html-attribute-2)
If you are using web-mode:
Additionally you need to add these lines:
(add-to-list 'web-mode-ac-sources-alist
             '("html" . (ac-source-html-tag
                         ac-source-html-attribute
                         ac-source-html-attribute-2)))
