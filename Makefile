.PHONY: push-* 1.* 2.* ae_* alt-ergo.*

help:
		@echo "Targets: $(TARGETS)"

############################################################################################################
# The following template files variables will be replaced with SED to produce the
# Dockerfiles needed to generate the image : 
# @Oaml_Compiler_Version@
# @AE_TAG_VERSION@
# @Alpine_Output_Version@
# @Target_Pkgs@ --> autoconf gmp-dev pkgconf zlib-dev


############################################################################################################


alt-ergo.0.95.2-slim: Dockerfile-aes-0-95-2
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 0.95.2\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS +=\n alt-ergo.0.95.2-slim\n

Dockerfile-aes-0-95-2: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.02|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|0.95.2|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.0.99.1-slim: Dockerfile-aes-0-99-1
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 0.99.1\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.0.99.1-slim\n

Dockerfile-aes-0-99-1: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.02|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|0.99.1|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.1.01-slim: Dockerfile-aes-1-01
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 1.01\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.1.01-slim\n

Dockerfile-aes-1-01: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.02|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|1.01|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.1.30-slim: Dockerfile-aes-1-30
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 1.30\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.1.30-slim\n

Dockerfile-aes-1-30: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.02|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|1.30|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.0.0-slim: Dockerfile-aes-2-0-0
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.0.0\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.0.0-slim\n

Dockerfile-aes-2-0-0: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.0.0|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.1.0-slim: Dockerfile-aes-2-1-0
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.1.0\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.1.0-slim\n

Dockerfile-aes-2-1-0: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.1.0|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.2.0-slim: Dockerfile-aes-2-2-0
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.2.0\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.2.0-slim\n

Dockerfile-aes-2-2-0: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.2.0|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.3.0-slim: Dockerfile-aes-2-3-0
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.3.0\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.3.0-slim\n

Dockerfile-aes-2-3-0: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.3.0|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.3.1-slim: Dockerfile-aes-2-3-1
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.3.1\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.3.1-slim\n

Dockerfile-aes-2-3-1: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.3.1|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.3.2-slim: Dockerfile-aes-2-3-2
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.3.2\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.3.2-slim\n

Dockerfile-aes-2-3-2: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.3.2|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.3.3-slim: Dockerfile-aes-2-3-3
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.3.3\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.3.3-slim\n

Dockerfile-aes-2-3-3: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.3.3|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

alt-ergo.2.4.0-slim: Dockerfile-aes-2-4-0
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.4.0\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.4.0-slim\n

Dockerfile-aes-2-4-0: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.4.0|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@


alt-ergo.2.4.1-slim: Dockerfile-aes-2-4-1
	@echo "\n\nGenerating slim image for alt-ergo (no GUI) version : 2.4.1\n"
	docker build . -t elias2049/ae_mono:$@ --target target -f $^
TARGETS += alt-ergo.2.4.1-slim\n

Dockerfile-aes-2-4-1: Makefile Dockerfile.template
	sed 's|@OCaml_Compiler_Version@|4.14|g' Dockerfile.template | \
	sed 's|@AE_TAG_VERSION@|2.4.1|g' | \
	sed 's|@Alpine_Output_Version@|3.16|g' | \
	sed 's|@Target_Pkgs@|gmp-dev|g' | \
cat > $@

push-last: alt-ergo.2.4.1-slim
	echo $$DOCKERHUB_PASSWORD | docker login -u $$DOCKERHUB_USERNAME --password-stdin
	docker push elias2049/ae_mono:alt-ergo.2.4.1-slim
TARGETS += push-last

push-all: alt-ergo.0.95.2-slim alt-ergo.0.99.1-slim alt-ergo.1.01-slim alt-ergo.1.30-slim alt-ergo.2.0.0-slim alt-ergo.2.1.0-slim alt-ergo.2.2.0-slim alt-ergo.2.3.0-slim alt-ergo.2.3.1-slim alt-ergo.2.3.2-slim alt-ergo.2.3.3-slim alt-ergo.2.4.0-slim alt-ergo.2.4.1-slim
	echo $DOCKERHUB_PASSWORD | docker login -u $DOCKERHUB_USERNAME --password-stdin
	docker push elias2049/ae_mono:alt-ergo.0.95.2-slim
	docker push elias2049/ae_mono:alt-ergo.0.99.1-slim
	docker push elias2049/ae_mono:alt-ergo.1.01-slim
	docker push elias2049/ae_mono:alt-ergo.1.30-slim
	docker push elias2049/ae_mono:alt-ergo.2.0.0-slim
	docker push elias2049/ae_mono:alt-ergo.2.1.0-slim
	docker push elias2049/ae_mono:alt-ergo.2.2.0-slim
	docker push elias2049/ae_mono:alt-ergo.2.3.0-slim
	docker push elias2049/ae_mono:alt-ergo.2.3.1-slim
	docker push elias2049/ae_mono:alt-ergo.2.3.2-slim
	docker push elias2049/ae_mono:alt-ergo.2.3.3-slim
	docker push elias2049/ae_mono:alt-ergo.2.4.0-slim
	docker push elias2049/ae_mono:alt-ergo.2.4.1-slim
TARGETS += push-all

clean :
	rm -f Dockerfile-ae*
	


