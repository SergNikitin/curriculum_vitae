PRODUCT_DIR='product'

all: hello clean create_build_dir compile_cv

hello:
	@echo "-- Building cv to .pdf"

clean:
	@rm -f ${PRODUCT_DIR}/*

create_build_dir:
	@mkdir -p ${PRODUCT_DIR}/


compile_cv:
	@latex -output-directory=${PRODUCT_DIR} -output-format=pdf src/main.tex
