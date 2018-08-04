docker build . -t prerender
CO=$(aws ecr get-login --region eu-west-1 --no-include-email) && $CO
docker tag prerender 793603699189.dkr.ecr.eu-west-1.amazonaws.com/prerender:latest &&
docker push 793603699189.dkr.ecr.eu-west-1.amazonaws.com/prerender:latest
