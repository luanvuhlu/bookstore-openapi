
#!/bin/bash
# # shopt -s globstar
# for i in ../api/**/*.yaml; do
#     echo "$i"
#     # java -jar openapi-generator-cli.jar generate -i api/com/luanvv/bookstore/product.yaml -g java -o out/product --additional-properties=groupId=com.luanvv.bookstore,artifactId=product,artifactUrl=https://github.com/luanvuhlu/bookstore-microservices,library=resttemplate,modelPackage=com.luanvv.bookstore.product.client.model,apiPackage=com.luanvv.bookstore.product.client.api,artifactVersion=1.0.0,java8=true,developerEmail=luanvuhlu@gmail.com,developerName=luanvu
# done
cd ../api
for i in $(find . -name *.yaml); do # Not recommended, will break on whitespace
    for j in $(echo $i | tr "/" "\n")
    do
        echo "$j"
    done
done