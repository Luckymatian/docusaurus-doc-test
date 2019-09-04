FROM luck135246/docusaurus-doc-test:v1
COPY mydocs/ /app/docs
COPY img/  /app/website/static/img
COPY ./sidebars.json /app/website/sidebars.json
 
CMD ["yarn","start"]