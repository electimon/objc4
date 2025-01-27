PROJECTNAME:=libobjc.A.dylib

CC:=ios-clang
CPP:=ios-clang++

CFLAGS += -I"$(DSTROOT)/usr/include/**" -I"$(DSTROOT)/usr/local/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/local/include/**" -I./runtime -I./runtime/OldClasses.subproj -I./runtime -I./runtime/Accessors.subproj -I./runtime/OldClasses.subproj -I.

CPPFLAGS += -I"$(DSTROOT)/usr/include/**" -I"$(DSTROOT)/usr/local/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/local/include/**" -I./runtime -I./runtime/OldClasses.subproj -I./runtime -I./runtime/Accessors.subproj -I./runtime/OldClasses.subproj -I.
LDFLAGS += -lc++ -lc++abi


all: $(PROJECTNAME) headers

OBJS+=  \
	./runtime/hashtable2.o \
	./runtime/maptable.o \
	./runtime/objc-auto.o \
	./runtime/objc-cache.o \
	./runtime/objc-class-old.o \
	./runtime/objc-class.o \
	./runtime/objc-errors.o \
	./runtime/objc-exception.o \
	./runtime/objc-file.o \
	./runtime/objc-initialize.o \
	./runtime/objc-layout.o \
	./runtime/objc-load.o \
	./runtime/objc-loadmethod.o \
	./runtime/objc-lockdebug.o \
	./runtime/objc-rtp.o \
	./runtime/objc-runtime-new.o \
	./runtime/objc-runtime-old.o \
	./runtime/objc-runtime.o \
	./runtime/objc-sel-set.o \
	./runtime/objc-sel.o \
	./runtime/objc-sync.o \
	./runtime/objc-typeencoding.o \
	./runtime/Object.o \
	./runtime/Protocol.o \
	./runtime/OldClasses.subproj/List.o \
	./runtime/Messengers.subproj/objc-msg-arm.o \
	./runtime/Messengers.subproj/objc-msg-i386.o \
	./runtime/Messengers.subproj/objc-msg-ppc.o \
	./runtime/Messengers.subproj/objc-msg-x86_64.o \
	./runtime/Auto.subproj/objc-auto-i386.o \
	./runtime/Auto.subproj/objc-auto-ppc.o \
	./runtime/Auto.subproj/objc-auto-ppc64.o \
	./runtime/Accessors.subproj/objc-accessors.o \
	./runtime/objc-sel-table.o \
	./runtime/objc-references.o \
	./runtime/objc-os.o \
	./runtime/objc-probes.d

$(PROJECTNAME): \
	./runtime/hashtable2.o \
	./runtime/maptable.o \
	./runtime/objc-auto.o \
	./runtime/objc-cache.o \
	./runtime/objc-class-old.o \
	./runtime/objc-class.o \
	./runtime/objc-errors.o \
	./runtime/objc-exception.o \
	./runtime/objc-file.o \
	./runtime/objc-initialize.o \
	./runtime/objc-layout.o \
	./runtime/objc-load.o \
	./runtime/objc-loadmethod.o \
	./runtime/objc-lockdebug.o \
	./runtime/objc-rtp.o \
	./runtime/objc-runtime-new.o \
	./runtime/objc-runtime-old.o \
	./runtime/objc-runtime.o \
	./runtime/objc-sel-set.o \
	./runtime/objc-sel.o \
	./runtime/objc-sync.o \
	./runtime/objc-typeencoding.o \
	./runtime/Object.o \
	./runtime/Protocol.o \
	./runtime/OldClasses.subproj/List.o \
	./runtime/Messengers.subproj/objc-msg-arm.o \
	./runtime/Messengers.subproj/objc-msg-i386.o \
	./runtime/Messengers.subproj/objc-msg-ppc.o \
	./runtime/Messengers.subproj/objc-msg-x86_64.o \
	./runtime/Auto.subproj/objc-auto-i386.o \
	./runtime/Auto.subproj/objc-auto-ppc.o \
	./runtime/Auto.subproj/objc-auto-ppc64.o \
	./runtime/Accessors.subproj/objc-accessors.o \
	./runtime/objc-sel-table.o \
	./runtime/objc-references.o \
	./runtime/objc-os.o \
	./runtime/objc-probes.d
	mkdir -p xcbuild
	$(CC) $(CFLAGS) $(LDFLAGS) $(filter %.o,$^) -dynamiclib -o xcbuild/$@.dylib

./runtime/hashtable2.o: ./runtime/hashtable2.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/maptable.o: ./runtime/maptable.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-auto.o: ./runtime/objc-auto.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-cache.o: ./runtime/objc-cache.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-class-old.o: ./runtime/objc-class-old.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-class.o: ./runtime/objc-class.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-errors.o: ./runtime/objc-errors.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-exception.o: ./runtime/objc-exception.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-file.o: ./runtime/objc-file.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-initialize.o: ./runtime/objc-initialize.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-layout.o: ./runtime/objc-layout.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-load.o: ./runtime/objc-load.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-loadmethod.o: ./runtime/objc-loadmethod.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-lockdebug.o: ./runtime/objc-lockdebug.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-rtp.o: ./runtime/objc-rtp.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-runtime-new.o: ./runtime/objc-runtime-new.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-runtime-old.o: ./runtime/objc-runtime-old.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-runtime.o: ./runtime/objc-runtime.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-sel-set.o: ./runtime/objc-sel-set.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-sel.o: ./runtime/objc-sel.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-sync.o: ./runtime/objc-sync.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-typeencoding.o: ./runtime/objc-typeencoding.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Object.o: ./runtime/Object.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Protocol.o: ./runtime/Protocol.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/OldClasses.subproj/List.o: ./runtime/OldClasses.subproj/List.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-arm.o: ./runtime/Messengers.subproj/objc-msg-arm.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-i386.o: ./runtime/Messengers.subproj/objc-msg-i386.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-ppc.o: ./runtime/Messengers.subproj/objc-msg-ppc.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-x86_64.o: ./runtime/Messengers.subproj/objc-msg-x86_64.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Auto.subproj/objc-auto-i386.o: ./runtime/Auto.subproj/objc-auto-i386.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Auto.subproj/objc-auto-ppc.o: ./runtime/Auto.subproj/objc-auto-ppc.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Auto.subproj/objc-auto-ppc64.o: ./runtime/Auto.subproj/objc-auto-ppc64.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Accessors.subproj/objc-accessors.o: ./runtime/Accessors.subproj/objc-accessors.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-sel-table.o: ./runtime/objc-sel-table.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-references.o: ./runtime/objc-references.mm
	$(CPP) -c $(CPPFLAGS) -fvisibility=hidden $< -o $@

./runtime/objc-os.o: ./runtime/objc-os.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-probes.d: ./runtime/objc-probes.d
	$(CC) -c $(CFLAGS)  $< -o $@

headers:
	mkdir -p xcbuild/headers/private
	cp -r ./runtime/error.h xcbuild/headers
	cp -r ./runtime/hashtable2.h xcbuild/headers
	cp -r ./runtime/maptable.h xcbuild/headers/private
	cp -r ./runtime/objc-api.h xcbuild/headers
	cp -r ./runtime/objc-auto.h xcbuild/headers
	cp -r ./runtime/objc-auto-dump.h xcbuild/headers/private
	cp -r ./runtime/objc-class.h xcbuild/headers
	cp -r ./runtime/objc-config.h xcbuild/headers/private
	cp -r ./runtime/objc-exception.h xcbuild/headers
	cp -r ./runtime/objc-initialize.h xcbuild/headers/private
	cp -r ./runtime/objc-load.h xcbuild/headers
	cp -r ./runtime/objc-loadmethod.h xcbuild/headers/private
	cp -r ./runtime/objc-private.h xcbuild/headers/private
	cp -r ./runtime/objc-rtp.h xcbuild/headers/private
	cp -r ./runtime/objc-runtime-new.h xcbuild/headers/private
	cp -r ./runtime/objc-runtime.h xcbuild/headers
	cp -r ./runtime/objc-selopt.h xcbuild/headers/private
	cp -r ./runtime/objc-sel-set.h xcbuild/headers/private
	cp -r ./runtime/objc-sync.h xcbuild/headers
	cp -r ./runtime/objc.h xcbuild/headers
	cp -r ./runtime/Object.h xcbuild/headers
	cp -r ./runtime/Protocol.h xcbuild/headers
	cp -r ./runtime/runtime.h xcbuild/headers
	cp -r ./runtime/OldClasses.subproj/List.h xcbuild/headers
	cp -r ./runtime/message.h xcbuild/headers
	cp -r ./runtime/Accessors.subproj/objc-accessors.h xcbuild/headers/private
	cp -r ./runtime/hashtable.h xcbuild/headers
	cp -r ./runtime/objc-references.h xcbuild/headers/private
	cp -r ./runtime/objc-os.h xcbuild/headers/private
	cp -r ./runtime/objc-gdb.h xcbuild/headers/private
	cp -r ./runtime/objc-internal.h xcbuild/headers/private

clean:
	find . -name \*.o|xargs rm -rf
	rm -rf xcbuild
