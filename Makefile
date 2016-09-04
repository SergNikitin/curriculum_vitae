PRODUCT_DIR='product'

all: hello clean create_build_dir compile_cv_ru

hello:
	@echo "-- Building cv to .pdf"

clean:
	@rm -f ${PRODUCT_DIR}/*

create_build_dir:
	@mkdir -p ${PRODUCT_DIR}/


compile_cv_ru:
	@latex -output-directory=${PRODUCT_DIR} -output-format=pdf -jobname=cv_ru src/ru/main.tex

compile_cv_en:
	@latex -output-directory=${PRODUCT_DIR} -output-format=pdf -jobname=cv_en src/en/main.tex
