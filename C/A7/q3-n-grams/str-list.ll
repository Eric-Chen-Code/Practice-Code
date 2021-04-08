; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_list = type { i32, i32, i32, [100000 x %struct.str_info] }
%struct.str_info = type { [1001 x i8], i32 }

@MAX_STRING_LEN = constant i32 1000, align 4
@MAX_STRINGS = constant i32 100000, align 4
@STRING_NOT_FOUND = constant i32 -1, align 4
@STRING_TOO_LONG = constant i32 -2, align 4
@STRING_LIST_FULL = constant i32 -3, align 4
@.str = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"/u2/cs136/cs136-files/w20/skeletons/A7/_build/str-list.c\00", align 1
@__PRETTY_FUNCTION__.str_list_find = private unnamed_addr constant [57 x i8] c"int str_list_find(const struct str_list *, const char *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@__PRETTY_FUNCTION__.str_list_add = private unnamed_addr constant [50 x i8] c"int str_list_add(struct str_list *, const char *)\00", align 1
@__PRETTY_FUNCTION__.str_list_reset = private unnamed_addr constant [39 x i8] c"void str_list_reset(struct str_list *)\00", align 1
@__PRETTY_FUNCTION__.str_list_len = private unnamed_addr constant [42 x i8] c"int str_list_len(const struct str_list *)\00", align 1
@__PRETTY_FUNCTION__.str_list_max_len = private unnamed_addr constant [46 x i8] c"int str_list_max_len(const struct str_list *)\00", align 1
@__PRETTY_FUNCTION__.str_list_get_string = private unnamed_addr constant [50 x i8] c"char *str_list_get_string(struct str_list *, int)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index >= 0\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"index < l->len\00", align 1
@__PRETTY_FUNCTION__.str_list_get_value = private unnamed_addr constant [53 x i8] c"int str_list_get_value(const struct str_list *, int)\00", align 1
@__PRETTY_FUNCTION__.str_list_set_value = private unnamed_addr constant [53 x i8] c"void str_list_set_value(struct str_list *, int, int)\00", align 1
@__PRETTY_FUNCTION__.str_list_print_element = private unnamed_addr constant [58 x i8] c"void str_list_print_element(const struct str_list *, int)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s : %d\0A\00", align 1
@__PRETTY_FUNCTION__.str_list_print = private unnamed_addr constant [45 x i8] c"void str_list_print(const struct str_list *)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@__PRETTY_FUNCTION__.str_list_print_ordered = private unnamed_addr constant [53 x i8] c"void str_list_print_ordered(const struct str_list *)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@__func__.str_list_print_ordered = private unnamed_addr constant [23 x i8] c"str_list_print_ordered\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"max_index\00", align 1

; Function Attrs: noinline nounwind optnone
define i32 @str_list_find(%struct.str_list* %l, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.str_list*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.str_list_find, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 50, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.str_list_find, i32 0, i32 0)) #6
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #7
  %cmp = icmp ugt i64 %call, 1000
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  store i32 -2, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %4, i32 0, i32 0
  %5 = load i32, i32* %len, align 4
  %cmp7 = icmp slt i32 %3, %5
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %6, i32 0, i32 3
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  %string = getelementptr inbounds %struct.str_info, %struct.str_info* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %string, i32 0, i32 0
  %8 = load i8*, i8** %s.addr, align 8
  %call8 = call i32 @strcmp(i8* %arraydecay, i8* %8) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then5
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define i32 @str_list_add(%struct.str_list* %l, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.str_list*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.str_list_add, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.str_list_add, i32 0, i32 0)) #6
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #7
  %cmp = icmp ugt i64 %call, 1000
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  store i32 -2, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end4
  %3 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %5 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %max_len = getelementptr inbounds %struct.str_list, %struct.str_list* %5, i32 0, i32 1
  %6 = load i32, i32* %max_len, align 4
  %cmp7 = icmp eq i32 %4, %6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 -3, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %7 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %7, i32 0, i32 3
  %8 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len10 = getelementptr inbounds %struct.str_list, %struct.str_list* %8, i32 0, i32 0
  %9 = load i32, i32* %len10, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  %string = getelementptr inbounds %struct.str_info, %struct.str_info* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %string, i32 0, i32 0
  %10 = load i8*, i8** %s.addr, align 8
  %call11 = call i8* @strcpy(i8* %arraydecay, i8* %10) #8
  %11 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len12 = getelementptr inbounds %struct.str_list, %struct.str_list* %11, i32 0, i32 0
  %12 = load i32, i32* %len12, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %len12, align 4
  %13 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len13 = getelementptr inbounds %struct.str_list, %struct.str_list* %13, i32 0, i32 0
  %14 = load i32, i32* %len13, align 4
  %sub = sub nsw i32 %14, 1
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then5
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone
define void @str_list_reset(%struct.str_list* %l) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  %s = alloca %struct.str_info*, align 8
  %i = alloca i32, align 4
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.str_list_reset, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %1, i32 0, i32 0
  store i32 0, i32* %len, align 4
  store %struct.str_info* null, %struct.str_info** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %max_len = getelementptr inbounds %struct.str_list, %struct.str_list* %3, i32 0, i32 1
  %4 = load i32, i32* %max_len, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %5, i32 0, i32 3
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  store %struct.str_info* %arrayidx, %struct.str_info** %s, align 8
  %7 = load %struct.str_info*, %struct.str_info** %s, align 8
  %value = getelementptr inbounds %struct.str_info, %struct.str_info* %7, i32 0, i32 1
  store i32 0, i32* %value, align 4
  %8 = load %struct.str_info*, %struct.str_info** %s, align 8
  %string = getelementptr inbounds %struct.str_info, %struct.str_info* %8, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [1001 x i8], [1001 x i8]* %string, i64 0, i64 0
  store i8 0, i8* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define i32 @str_list_len(%struct.str_list* %l) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.str_list_len, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %1, i32 0, i32 0
  %2 = load i32, i32* %len, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone
define i32 @str_list_max_len(%struct.str_list* %l) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.str_list_max_len, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %max_len = getelementptr inbounds %struct.str_list, %struct.str_list* %1, i32 0, i32 1
  %2 = load i32, i32* %max_len, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone
define i8* @str_list_get_string(%struct.str_list* %l, i32 %index) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  %index.addr = alloca i32, align 4
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 124, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.str_list_get_string, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.str_list_get_string, i32 0, i32 0)) #6
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %index.addr, align 4
  %3 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %cmp4 = icmp slt i32 %2, %4
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.str_list_get_string, i32 0, i32 0)) #6
  unreachable

if.end7:                                          ; preds = %if.then5
  %5 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %5, i32 0, i32 3
  %6 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  %string = getelementptr inbounds %struct.str_info, %struct.str_info* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %string, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: noinline nounwind optnone
define i32 @str_list_get_value(%struct.str_list* %l, i32 %index) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  %index.addr = alloca i32, align 4
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.str_list_get_value, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.str_list_get_value, i32 0, i32 0)) #6
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %index.addr, align 4
  %3 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %cmp4 = icmp slt i32 %2, %4
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.str_list_get_value, i32 0, i32 0)) #6
  unreachable

if.end7:                                          ; preds = %if.then5
  %5 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %5, i32 0, i32 3
  %6 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  %value = getelementptr inbounds %struct.str_info, %struct.str_info* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %value, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define void @str_list_set_value(%struct.str_list* %l, i32 %index, i32 %v) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  %index.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 140, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.str_list_set_value, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 141, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.str_list_set_value, i32 0, i32 0)) #6
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %index.addr, align 4
  %3 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %cmp4 = icmp slt i32 %2, %4
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 142, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.str_list_set_value, i32 0, i32 0)) #6
  unreachable

if.end7:                                          ; preds = %if.then5
  %5 = load i32, i32* %v.addr, align 4
  %6 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %6, i32 0, i32 3
  %7 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  %value = getelementptr inbounds %struct.str_info, %struct.str_info* %arrayidx, i32 0, i32 1
  store i32 %5, i32* %value, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define i32 @str_list_get_max_str_len(%struct.str_list* %l) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %max_str_len = getelementptr inbounds %struct.str_list, %struct.str_list* %0, i32 0, i32 2
  %1 = load i32, i32* %max_str_len, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone
define void @str_list_print_element(%struct.str_list* %l, i32 %index) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  %index.addr = alloca i32, align 4
  %s = alloca %struct.str_info*, align 8
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.str_list_print_element, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.str_list_print_element, i32 0, i32 0)) #6
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, i32* %index.addr, align 4
  %3 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %cmp4 = icmp slt i32 %2, %4
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 154, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.str_list_print_element, i32 0, i32 0)) #6
  unreachable

if.end7:                                          ; preds = %if.then5
  %5 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %strings = getelementptr inbounds %struct.str_list, %struct.str_list* %5, i32 0, i32 3
  %6 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100000 x %struct.str_info], [100000 x %struct.str_info]* %strings, i64 0, i64 %idxprom
  store %struct.str_info* %arrayidx, %struct.str_info** %s, align 8
  %7 = load %struct.str_info*, %struct.str_info** %s, align 8
  %string = getelementptr inbounds %struct.str_info, %struct.str_info* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %string, i32 0, i32 0
  %8 = load %struct.str_info*, %struct.str_info** %s, align 8
  %value = getelementptr inbounds %struct.str_info, %struct.str_info* %8, i32 0, i32 1
  %9 = load i32, i32* %value, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay, i32 %9)
  ret void
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone
define void @str_list_print(%struct.str_list* %l) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  %i = alloca i32, align 4
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.str_list_print, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %1, i32 0, i32 0
  %2 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end

if.end2:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end2
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %call3 = call i32 @str_list_len(%struct.str_list* %4)
  %cmp4 = icmp slt i32 %3, %call3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %6 = load i32, i32* %i, align 4
  call void @str_list_print_element(%struct.str_list* %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then1, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @str_list_print_ordered(%struct.str_list* %l) #0 {
entry:
  %l.addr = alloca %struct.str_list*, align 8
  %max = alloca i32, align 4
  %max_index = alloca i32, align 4
  %printed = alloca [100000 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.str_list* %l, %struct.str_list** %l.addr, align 8
  %0 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %tobool = icmp ne %struct.str_list* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.str_list_print_ordered, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  store i32 -1, i32* %max, align 4
  store i32 -1, i32* %max_index, align 4
  %1 = bitcast [100000 x i8]* %printed to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 100000, i1 false)
  call void @trace_off()
  %2 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len = getelementptr inbounds %struct.str_list, %struct.str_list* %2, i32 0, i32 0
  %3 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end21

if.end2:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %if.end2
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len3 = getelementptr inbounds %struct.str_list, %struct.str_list* %5, i32 0, i32 0
  %6 = load i32, i32* %len3, align 4
  %cmp4 = icmp slt i32 %4, %6
  br i1 %cmp4, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %max, align 4
  store i32 -1, i32* %max_index, align 4
  %7 = load i32, i32* %i, align 4
  call void @_TRACE_INT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.str_list_print_ordered, i32 0, i32 0), i32 192)
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %len6 = getelementptr inbounds %struct.str_list, %struct.str_list* %9, i32 0, i32 0
  %10 = load i32, i32* %len6, align 4
  %cmp7 = icmp slt i32 %8, %10
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %11 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %12 = load i32, i32* %j, align 4
  %call9 = call i32 @str_list_get_value(%struct.str_list* %11, i32 %12)
  store i32 %call9, i32* %value, align 4
  %13 = load i32, i32* %j, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [100000 x i8], [100000 x i8]* %printed, i64 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %tobool10 = trunc i8 %14 to i1
  %conv = zext i1 %tobool10 to i32
  %cmp11 = icmp eq i32 %conv, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %for.body8
  %15 = load i32, i32* %value, align 4
  %16 = load i32, i32* %max, align 4
  %cmp13 = icmp sgt i32 %15, %16
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %value, align 4
  store i32 %17, i32* %max, align 4
  %18 = load i32, i32* %j, align 4
  store i32 %18, i32* %max_index, align 4
  %19 = load i32, i32* %max, align 4
  call void @_TRACE_INT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.str_list_print_ordered, i32 0, i32 0), i32 198)
  %20 = load i32, i32* %max_index, align 4
  call void @_TRACE_INT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.str_list_print_ordered, i32 0, i32 0), i32 199)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  %22 = load %struct.str_list*, %struct.str_list** %l.addr, align 8
  %23 = load i32, i32* %max_index, align 4
  call void @str_list_print_element(%struct.str_list* %22, i32 %23)
  %24 = load i32, i32* %max_index, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [100000 x i8], [100000 x i8]* %printed, i64 0, i64 %idxprom17
  store i8 1, i8* %arrayidx18, align 1
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end21:                                        ; preds = %if.then1, %for.cond
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

declare void @trace_off() #4

declare void @_TRACE_INT(i8*, i32, i8*, i8*, i32) #4

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
