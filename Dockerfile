FROM bash

WORKDIR app
ADD scripts/ .

ENTRYPOINT ["bash", "menu.sh"]
