PROJECTNAME:=libobjc.A.dylib

CC:=arm-apple-darwin9-clang
CPP:=arm-apple-darwin9-clang++

CFLAGS += -I"$(DSTROOT)/usr/include/**" -I"$(DSTROOT)/usr/local/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/local/include/**" -I./runtime -I./runtime/OldClasses.subproj -I./runtime -I./runtime/Accessors.subproj -I./runtime/OldClasses.subproj -I.

CPPFLAGS += -I"$(DSTROOT)/usr/include/**" -I"$(DSTROOT)/usr/local/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/include/**" -I"$(CONFIGURATION_BUILD_DIR)/usr/local/include/**" -I./runtime -I./runtime/OldClasses.subproj -I./runtime -I./runtime/Accessors.subproj -I./runtime/OldClasses.subproj -I.
LDFLAGS += -lc++ -lc++abi -lclosure


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
	./runtime/Messengers.subproj/objc-msg-x86_64.o \
	./runtime/Accessors.subproj/objc-accessors.o \
	./runtime/objc-references.o \
	./runtime/objc-os.o \
	./runtime/objc-probes.d \
	./runtime/objc-auto-dump.o \
	./runtime/objc-file-old.o \
	./runtime/a1a2-blocktramps-i386.o \
	./runtime/a1a2-blocktramps-x86_64.o \
	./runtime/a2a3-blocktramps-i386.o \
	./runtime/a2a3-blocktramps-x86_64.o \
	./runtime/objc-block-trampolines.o \
	./runtime/Messengers.subproj/objc-msg-simulator-i386.o \
	./runtime/objc-sel-table.o \
	./runtime/a1a2-blocktramps-arm.o \
	./runtime/a2a3-blocktramps-arm.o \
	./runtime/objc-externalref.o \
	./runtime/objc-weak.o \
	./runtime/NSObject.o \
	./runtime/objc-opt.o \
	./getsecbyname.o

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
	./runtime/Messengers.subproj/objc-msg-x86_64.o \
	./runtime/Accessors.subproj/objc-accessors.o \
	./runtime/objc-references.o \
	./runtime/objc-os.o \
	./runtime/objc-probes.d \
	./runtime/objc-auto-dump.o \
	./runtime/objc-file-old.o \
	./runtime/a1a2-blocktramps-i386.o \
	./runtime/a1a2-blocktramps-x86_64.o \
	./runtime/a2a3-blocktramps-i386.o \
	./runtime/a2a3-blocktramps-x86_64.o \
	./runtime/objc-block-trampolines.o \
	./runtime/Messengers.subproj/objc-msg-simulator-i386.o \
	./runtime/objc-sel-table.o \
	./runtime/a1a2-blocktramps-arm.o \
	./runtime/a2a3-blocktramps-arm.o \
	./runtime/objc-externalref.o \
	./runtime/objc-weak.o \
	./runtime/NSObject.o \
	./runtime/objc-opt.o \
	./getsecbyname.o
	mkdir -p xcbuild
	$(CC) $(CFLAGS) $(LDFLAGS) $(filter %.o,$^) -dynamiclib -o xcbuild/$@

./runtime/hashtable2.o: ./runtime/hashtable2.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/maptable.o: ./runtime/maptable.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-auto.o: ./runtime/objc-auto.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-cache.o: ./runtime/objc-cache.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-class-old.o: ./runtime/objc-class-old.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-class.o: ./runtime/objc-class.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-errors.o: ./runtime/objc-errors.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-exception.o: ./runtime/objc-exception.mm
	$(CPP) -c $(CPPFLAGS) -fexceptions $< -o $@

./runtime/objc-file.o: ./runtime/objc-file.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-initialize.o: ./runtime/objc-initialize.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-layout.o: ./runtime/objc-layout.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-load.o: ./runtime/objc-load.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-loadmethod.o: ./runtime/objc-loadmethod.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-lockdebug.o: ./runtime/objc-lockdebug.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-runtime-new.o: ./runtime/objc-runtime-new.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-runtime-old.o: ./runtime/objc-runtime-old.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-runtime.o: ./runtime/objc-runtime.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-sel-set.o: ./runtime/objc-sel-set.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-sel.o: ./runtime/objc-sel.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-sync.o: ./runtime/objc-sync.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-typeencoding.o: ./runtime/objc-typeencoding.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/Object.o: ./runtime/Object.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Protocol.o: ./runtime/Protocol.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/OldClasses.subproj/List.o: ./runtime/OldClasses.subproj/List.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-arm.o: ./runtime/Messengers.subproj/objc-msg-arm.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-i386.o: ./runtime/Messengers.subproj/objc-msg-i386.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-x86_64.o: ./runtime/Messengers.subproj/objc-msg-x86_64.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/Accessors.subproj/objc-accessors.o: ./runtime/Accessors.subproj/objc-accessors.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-references.o: ./runtime/objc-references.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-os.o: ./runtime/objc-os.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-probes.d: ./runtime/objc-probes.d
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-auto-dump.o: ./runtime/objc-auto-dump.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-file-old.o: ./runtime/objc-file-old.m
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/a1a2-blocktramps-i386.o: ./runtime/a1a2-blocktramps-i386.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/a1a2-blocktramps-x86_64.o: ./runtime/a1a2-blocktramps-x86_64.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/a2a3-blocktramps-i386.o: ./runtime/a2a3-blocktramps-i386.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/a2a3-blocktramps-x86_64.o: ./runtime/a2a3-blocktramps-x86_64.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-block-trampolines.o: ./runtime/objc-block-trampolines.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/Messengers.subproj/objc-msg-simulator-i386.o: ./runtime/Messengers.subproj/objc-msg-simulator-i386.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-sel-table.o: ./runtime/objc-sel-table.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/a1a2-blocktramps-arm.o: ./runtime/a1a2-blocktramps-arm.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/a2a3-blocktramps-arm.o: ./runtime/a2a3-blocktramps-arm.s
	$(CC) -c $(CFLAGS)  $< -o $@

./runtime/objc-externalref.o: ./runtime/objc-externalref.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-weak.o: ./runtime/objc-weak.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/NSObject.o: ./runtime/NSObject.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./runtime/objc-opt.o: ./runtime/objc-opt.mm
	$(CPP) -c $(CPPFLAGS)  $< -o $@

./getsecbyname.o: ./getsecbyname.c
	$(CC) -c $(CFLAGS)  $< -o $@

headers:
	mkdir -p xcbuild/headers/private
	cp -r ./runtime/hashtable.h xcbuild/headers
	cp -r ./runtime/hashtable2.h xcbuild/headers
	cp -r ./runtime/OldClasses.subproj/List.h xcbuild/headers
	cp -r ./runtime/maptable.h xcbuild/headers/private
	cp -r ./runtime/message.h xcbuild/headers
	cp -r ./runtime/objc-abi.h xcbuild/headers/private
	cp -r ./runtime/Accessors.subproj/objc-accessors.h xcbuild/headers/private
	cp -r ./runtime/objc-api.h xcbuild/headers
	cp -r ./runtime/objc-auto-dump.h xcbuild/headers/private
	cp -r ./runtime/objc-auto.h xcbuild/headers
	cp -r ./runtime/objc-class.h xcbuild/headers
	cp -r ./runtime/objc-config.h xcbuild/headers/private
	cp -r ./runtime/objc-exception.h xcbuild/headers
	cp -r ./runtime/objc-file-old.h xcbuild/headers/private
	cp -r ./runtime/objc-file.h xcbuild/headers/private
	cp -r ./runtime/objc-gdb.h xcbuild/headers/private
	cp -r ./runtime/objc-initialize.h xcbuild/headers/private
	cp -r ./runtime/objc-internal.h xcbuild/headers/private
	cp -r ./runtime/objc-load.h xcbuild/headers
	cp -r ./runtime/objc-loadmethod.h xcbuild/headers/private
	cp -r ./runtime/objc-os.h xcbuild/headers/private
	cp -r ./runtime/objc-private.h xcbuild/headers/private
	cp -r ./runtime/objc-references.h xcbuild/headers/private
	cp -r ./runtime/objc-runtime-new.h xcbuild/headers/private
	cp -r ./runtime/objc-runtime-old.h xcbuild/headers/private
	cp -r ./runtime/objc-runtime.h xcbuild/headers
	cp -r ./runtime/objc-sel-set.h xcbuild/headers/private
	cp -r ./runtime/objc-sync.h xcbuild/headers
	cp -r ./runtime/objc.h xcbuild/headers
	cp -r ./runtime/Object.h xcbuild/headers
	cp -r ./runtime/Protocol.h xcbuild/headers
	cp -r ./runtime/runtime.h xcbuild/headers
	cp -r ./runtime/objc-weak.h xcbuild/headers/private

clean:
	find . -name \*.o|xargs rm -rf
	rm -rf xcbuild
