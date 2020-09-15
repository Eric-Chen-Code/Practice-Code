; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_list = type { i32, i32, i32, [100000 x %struct.str_info] }
%struct.str_info = type { [1001 x i8], i32 }

@.str = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"/u2/cs136/cs136-files/w20/skeletons/A7/_build/str-create-destroy.c\00", align 1
@__PRETTY_FUNCTION__.str_list_create = private unnamed_addr constant [39 x i8] c"struct str_list *str_list_create(void)\00", align 1
@MAX_STRING_LEN = external constant i32, align 4
@MAX_STRINGS = external constant i32, align 4
@__PRETTY_FUNCTION__.str_list_destroy = private unnamed_addr constant [41 x i8] c"void str_list_destroy(struct str_list *)\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.str_list* @str_list_create() #0 {
entry:
  %l = alloca %struct.str_list*, align 8
  %w = alloca %struct.str_info*, align 8
  %i = alloca i32, align 4
  %call = call noalias i8* @malloc(i64 100800012) #3
  %0 = bitcast i8* %call to %struct.str_list*
  store %struct.str_list* %0, %struct.str_list** %l, align 8
  %1 = load %struct.str_list*, %struct.str_list** %l, align 8
  %tobool = icmp ne %struct.str_list* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.str_list_create, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  store %struct.str_info* null, %struct.str_info** %w, align 8
  %2 = load i32, i32* @MAX_STRING_LEN, align 4
  %3 = load %struct.str_list*, %struct.str_list** %l, align 8
  %max_str_len = getelementptr inbounds %struct.str_list, %struct.str_list* %3, i32 0, i32 2
  store i32 %2, i32* %max_str_len, align 4
  %4 = load %struct.str_list*, %struct.str_list** %l, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %4, i32 0, i32 0
  store i32 0, i32* %len, align 4
  %5 = load i32, i32* @MAX_STRINGS, align 4
  %6 = load %struct.str_list*, %struct.str_list** %l, align 8
  %max_len = getelementptr inbounds %struct.str_list, %struct.str_list* %6, i32 0, i32 1
  store i32 %5, i32* %max_len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.str_list*, %struct.str_list** %l, align 8
  %max_len1 = getelementptr inbounds %struct.str_list, %struct.str_list* %8, i32 0, i32 1
  %9 = load i32, i32* %max_len1, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.str_list*, %struct.str_list** %l, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %10, i32 0, i32 3
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  store %struct.str_info* %arrayidx, %struct.str_info** %w, align 8
  %12 = load %struct.str_info*, %struct.str_info** %w, align 8
  %value = getelementptr inbounds %struct.str_info, %struct.str_info* %12, i32 0, i32 1
  store i32 0, i32* %value, align 4
  %13 = load %struct.str_info*, %struct.str_info** %w, align 8
  %string = getelementptr inbounds %struct.str_info, %struct.str_info* %13, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [1001 x i8], [1001 x i8]* %string, i64 0, i64 0
  store i8 0, i8* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.str_list*, %struct.str_list** %l, align 8
  ret %struct.str_list* %15
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define void @str_list_destroy(%struct.str_list* %l) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.str_list_destroy, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %2 = bitcast %struct.str_list* %1 to i8*
  call void @free(i8* %2) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
