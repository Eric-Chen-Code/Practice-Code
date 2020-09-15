; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maze = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@UP = constant i32 0, align 4
@RIGHT = constant i32 1, align 4
@DOWN = constant i32 2, align 4
@LEFT = constant i32 3, align 4
@.str = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"/u1/dtompkins/.seashell/projects/_A5/q2/maze.c\00", align 1
@__PRETTY_FUNCTION__.is_wall = private unnamed_addr constant [40 x i8] c"_Bool is_wall(const struct maze *, int)\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"direction == UP || direction == DOWN || direction == LEFT || direction == RIGHT\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"INVALID MAZE INPUT\0A\00", align 1
@__PRETTY_FUNCTION__.move = private unnamed_addr constant [30 x i8] c"void move(struct maze *, int)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"***BONK!***\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"***OUTSIDE MAZE! (unexpected)!***\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bigbuffer = internal global [1049600 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone
define zeroext i1 @is_wall(%struct.maze* %m, i32 %direction) #0 {
entry:
  %retval = alloca i1, align 1
  %m.addr = alloca %struct.maze*, align 8
  %direction.addr = alloca i32, align 4
  %position = alloca i8*, align 8
  store %struct.maze* %m, %struct.maze** %m.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %tobool = icmp ne %struct.maze* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.is_wall, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %direction.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %direction.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then6, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %direction.addr, align 4
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, i32* %direction.addr, align 4
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  br label %if.end8

if.else7:                                         ; preds = %lor.lhs.false4
  call void @__assert_fail(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.is_wall, i32 0, i32 0)) #5
  unreachable

if.end8:                                          ; preds = %if.then6
  %5 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %6 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_x = getelementptr inbounds %struct.maze, %struct.maze* %6, i32 0, i32 6
  %7 = load i32, i32* %pos_x, align 8
  %8 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_y = getelementptr inbounds %struct.maze, %struct.maze* %8, i32 0, i32 7
  %9 = load i32, i32* %pos_y, align 4
  %call = call i8* @loc(%struct.maze* %5, i32 %7, i32 %9)
  store i8* %call, i8** %position, align 8
  %10 = load i32, i32* %direction.addr, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %11 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %width = getelementptr inbounds %struct.maze, %struct.maze* %11, i32 0, i32 0
  %12 = load i32, i32* %width, align 8
  %mul = mul nsw i32 %12, 2
  %add = add nsw i32 %mul, 2
  %13 = load i8*, i8** %position, align 8
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.neg
  store i8* %add.ptr, i8** %position, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %14 = load i32, i32* %direction.addr, align 4
  %cmp12 = icmp eq i32 %14, 2
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end11
  %15 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %width14 = getelementptr inbounds %struct.maze, %struct.maze* %15, i32 0, i32 0
  %16 = load i32, i32* %width14, align 8
  %mul15 = mul nsw i32 %16, 2
  %add16 = add nsw i32 %mul15, 2
  %17 = load i8*, i8** %position, align 8
  %idx.ext17 = sext i32 %add16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %17, i64 %idx.ext17
  store i8* %add.ptr18, i8** %position, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end11
  %18 = load i32, i32* %direction.addr, align 4
  %cmp20 = icmp eq i32 %18, 3
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  %19 = load i8*, i8** %position, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr, i8** %position, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  %20 = load i32, i32* %direction.addr, align 4
  %cmp23 = icmp eq i32 %20, 1
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  %21 = load i8*, i8** %position, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr25, i8** %position, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22
  %22 = load i8*, i8** %position, align 8
  %23 = load i8, i8* %22, align 1
  %conv = sext i8 %23 to i32
  %cmp27 = icmp eq i32 %conv, 46
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  store i1 false, i1* %retval, align 1
  br label %return

if.end30:                                         ; preds = %if.end26
  %24 = load i8*, i8** %position, align 8
  %25 = load i8, i8* %24, align 1
  %conv31 = sext i8 %25 to i32
  %cmp32 = icmp eq i32 %conv31, 124
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end30
  %26 = load i8*, i8** %position, align 8
  %27 = load i8, i8* %26, align 1
  %conv35 = sext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv35, 45
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false34, %if.end30
  store i1 true, i1* %retval, align 1
  br label %return

if.end39:                                         ; preds = %lor.lhs.false34
  %28 = load %struct.maze*, %struct.maze** %m.addr, align 8
  call void @invalid_maze(%struct.maze* %28)
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end39, %if.then38, %if.then29
  %29 = load i1, i1* %retval, align 1
  ret i1 %29
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone
define internal i8* @loc(%struct.maze* %m, i32 %x, i32 %y) #0 {
entry:
  %m.addr = alloca %struct.maze*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.maze* %m, %struct.maze** %m.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %grid = getelementptr inbounds %struct.maze, %struct.maze* %0, i32 0, i32 8
  %1 = load i8*, i8** %grid, align 8
  %2 = load i32, i32* %y.addr, align 4
  %mul = mul nsw i32 2, %2
  %add = add nsw i32 %mul, 1
  %3 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %width = getelementptr inbounds %struct.maze, %struct.maze* %3, i32 0, i32 0
  %4 = load i32, i32* %width, align 8
  %mul1 = mul nsw i32 2, %4
  %add2 = add nsw i32 %mul1, 2
  %mul3 = mul nsw i32 %add, %add2
  %idx.ext = sext i32 %mul3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %5 = load i32, i32* %x.addr, align 4
  %mul4 = mul nsw i32 2, %5
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext5
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 1
  ret i8* %add.ptr7
}

; Function Attrs: noinline nounwind optnone
define internal void @invalid_maze(%struct.maze* %m) #0 {
entry:
  %m.addr = alloca %struct.maze*, align 8
  store %struct.maze* %m, %struct.maze** %m.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  %0 = load %struct.maze*, %struct.maze** %m.addr, align 8
  call void @maze_destroy(%struct.maze* %0)
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define internal void @maze_destroy(%struct.maze* %m) #0 {
entry:
  %m.addr = alloca %struct.maze*, align 8
  store %struct.maze* %m, %struct.maze** %m.addr, align 8
  %0 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %tobool = icmp ne %struct.maze* %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %grid = getelementptr inbounds %struct.maze, %struct.maze* %1, i32 0, i32 8
  %2 = load i8*, i8** %grid, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %grid3 = getelementptr inbounds %struct.maze, %struct.maze* %3, i32 0, i32 8
  %4 = load i8*, i8** %grid3, align 8
  call void @free(i8* %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %6 = bitcast %struct.maze* %5 to i8*
  call void @free(i8* %6) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone
define void @move(%struct.maze* %m, i32 %direction) #0 {
entry:
  %m.addr = alloca %struct.maze*, align 8
  %direction.addr = alloca i32, align 4
  store %struct.maze* %m, %struct.maze** %m.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %tobool = icmp ne %struct.maze* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.move, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %direction.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %direction.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then6, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %direction.addr, align 4
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, i32* %direction.addr, align 4
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  br label %if.end8

if.else7:                                         ; preds = %lor.lhs.false4
  call void @__assert_fail(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.move, i32 0, i32 0)) #5
  unreachable

if.end8:                                          ; preds = %if.then6
  %5 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %6 = load i32, i32* %direction.addr, align 4
  %call = call zeroext i1 @is_wall(%struct.maze* %5, i32 %6)
  br i1 %call, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end11:                                         ; preds = %if.end8
  %7 = load i32, i32* %direction.addr, align 4
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %8 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_y = getelementptr inbounds %struct.maze, %struct.maze* %8, i32 0, i32 7
  %9 = load i32, i32* %pos_y, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %pos_y, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %10 = load i32, i32* %direction.addr, align 4
  %cmp16 = icmp eq i32 %10, 2
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end15
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %11 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_y19 = getelementptr inbounds %struct.maze, %struct.maze* %11, i32 0, i32 7
  %12 = load i32, i32* %pos_y19, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %pos_y19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15
  %13 = load i32, i32* %direction.addr, align 4
  %cmp21 = icmp eq i32 %13, 3
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %14 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_x = getelementptr inbounds %struct.maze, %struct.maze* %14, i32 0, i32 6
  %15 = load i32, i32* %pos_x, align 8
  %sub24 = sub nsw i32 %15, 1
  store i32 %sub24, i32* %pos_x, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20
  %16 = load i32, i32* %direction.addr, align 4
  %cmp26 = icmp eq i32 %16, 1
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end25
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %17 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_x29 = getelementptr inbounds %struct.maze, %struct.maze* %17, i32 0, i32 6
  %18 = load i32, i32* %pos_x29, align 8
  %add30 = add nsw i32 %18, 1
  store i32 %add30, i32* %pos_x29, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25
  %19 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_y32 = getelementptr inbounds %struct.maze, %struct.maze* %19, i32 0, i32 7
  %20 = load i32, i32* %pos_y32, align 4
  %cmp33 = icmp slt i32 %20, 0
  br i1 %cmp33, label %if.then43, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end31
  %21 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_y35 = getelementptr inbounds %struct.maze, %struct.maze* %21, i32 0, i32 7
  %22 = load i32, i32* %pos_y35, align 4
  %23 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %height = getelementptr inbounds %struct.maze, %struct.maze* %23, i32 0, i32 1
  %24 = load i32, i32* %height, align 4
  %cmp36 = icmp sge i32 %22, %24
  br i1 %cmp36, label %if.then43, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %25 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_x38 = getelementptr inbounds %struct.maze, %struct.maze* %25, i32 0, i32 6
  %26 = load i32, i32* %pos_x38, align 8
  %cmp39 = icmp slt i32 %26, 0
  br i1 %cmp39, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %27 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_x41 = getelementptr inbounds %struct.maze, %struct.maze* %27, i32 0, i32 6
  %28 = load i32, i32* %pos_x41, align 8
  %29 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %width = getelementptr inbounds %struct.maze, %struct.maze* %29, i32 0, i32 0
  %30 = load i32, i32* %width, align 8
  %cmp42 = icmp sge i32 %28, %30
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %lor.lhs.false40, %lor.lhs.false37, %lor.lhs.false34, %if.end31
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end45:                                         ; preds = %lor.lhs.false40
  %31 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_x46 = getelementptr inbounds %struct.maze, %struct.maze* %31, i32 0, i32 6
  %32 = load i32, i32* %pos_x46, align 8
  %33 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %exit_x = getelementptr inbounds %struct.maze, %struct.maze* %33, i32 0, i32 4
  %34 = load i32, i32* %exit_x, align 8
  %cmp47 = icmp eq i32 %32, %34
  br i1 %cmp47, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.end45
  %35 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %pos_y48 = getelementptr inbounds %struct.maze, %struct.maze* %35, i32 0, i32 7
  %36 = load i32, i32* %pos_y48, align 4
  %37 = load %struct.maze*, %struct.maze** %m.addr, align 8
  %exit_y = getelementptr inbounds %struct.maze, %struct.maze* %37, i32 0, i32 5
  %38 = load i32, i32* %exit_y, align 4
  %cmp49 = icmp eq i32 %36, %38
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %land.lhs.true
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end52:                                         ; preds = %land.lhs.true, %if.end45
  ret void
}

; Function Attrs: noinline nounwind optnone
define %struct.maze* @read_maze() #0 {
entry:
  %m = alloca %struct.maze*, align 8
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %y = alloca i32, align 4
  %y41 = alloca i32, align 4
  %x = alloca i32, align 4
  %c = alloca i8, align 1
  %y95 = alloca i32, align 4
  %x101 = alloca i32, align 4
  %call = call noalias i8* @malloc(i64 40) #6
  %0 = bitcast i8* %call to %struct.maze*
  store %struct.maze* %0, %struct.maze** %m, align 8
  %1 = load %struct.maze*, %struct.maze** %m, align 8
  %grid = getelementptr inbounds %struct.maze, %struct.maze* %1, i32 0, i32 8
  store i8* null, i8** %grid, align 8
  %2 = load %struct.maze*, %struct.maze** %m, align 8
  %width = getelementptr inbounds %struct.maze, %struct.maze* %2, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %width)
  %cmp = icmp ne i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.maze*, %struct.maze** %m, align 8
  %height = getelementptr inbounds %struct.maze, %struct.maze* %4, i32 0, i32 1
  %call2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %height)
  %cmp3 = icmp ne i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load %struct.maze*, %struct.maze** %m, align 8
  %width6 = getelementptr inbounds %struct.maze, %struct.maze* %6, i32 0, i32 0
  %7 = load i32, i32* %width6, align 8
  %cmp7 = icmp sle i32 %7, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %8 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %8)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %9 = load %struct.maze*, %struct.maze** %m, align 8
  %height10 = getelementptr inbounds %struct.maze, %struct.maze* %9, i32 0, i32 1
  %10 = load i32, i32* %height10, align 4
  %cmp11 = icmp sle i32 %10, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %11 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %11)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %12 = load %struct.maze*, %struct.maze** %m, align 8
  %height14 = getelementptr inbounds %struct.maze, %struct.maze* %12, i32 0, i32 1
  %13 = load i32, i32* %height14, align 4
  %mul = mul nsw i32 2, %13
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %h, align 4
  %14 = load %struct.maze*, %struct.maze** %m, align 8
  %width15 = getelementptr inbounds %struct.maze, %struct.maze* %14, i32 0, i32 0
  %15 = load i32, i32* %width15, align 8
  %mul16 = mul nsw i32 2, %15
  %add17 = add nsw i32 %mul16, 1
  store i32 %add17, i32* %w, align 4
  %16 = load i32, i32* %h, align 4
  %conv = sext i32 %16 to i64
  %mul18 = mul i64 1, %conv
  %17 = load i32, i32* %w, align 4
  %add19 = add nsw i32 %17, 1
  %conv20 = sext i32 %add19 to i64
  %mul21 = mul i64 %mul18, %conv20
  %call22 = call noalias i8* @malloc(i64 %mul21) #6
  %18 = load %struct.maze*, %struct.maze** %m, align 8
  %grid23 = getelementptr inbounds %struct.maze, %struct.maze* %18, i32 0, i32 8
  store i8* %call22, i8** %grid23, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %h, align 4
  %cmp24 = icmp slt i32 %19, %20
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call26 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1049600 x i8], [1049600 x i8]* @bigbuffer, i32 0, i32 0))
  %cmp27 = icmp ne i32 %call26, 1
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  %21 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %21)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.body
  %call31 = call i64 @strlen(i8* getelementptr inbounds ([1049600 x i8], [1049600 x i8]* @bigbuffer, i32 0, i32 0)) #7
  %22 = load i32, i32* %w, align 4
  %conv32 = sext i32 %22 to i64
  %cmp33 = icmp ne i64 %call31, %conv32
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end30
  %23 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %23)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30
  %24 = load %struct.maze*, %struct.maze** %m, align 8
  %grid37 = getelementptr inbounds %struct.maze, %struct.maze* %24, i32 0, i32 8
  %25 = load i8*, i8** %grid37, align 8
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %w, align 4
  %add38 = add nsw i32 %27, 1
  %mul39 = mul nsw i32 %26, %add38
  %idx.ext = sext i32 %mul39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %call40 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([1049600 x i8], [1049600 x i8]* @bigbuffer, i32 0, i32 0)) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %28 = load i32, i32* %y, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.maze*, %struct.maze** %m, align 8
  %exit_y = getelementptr inbounds %struct.maze, %struct.maze* %29, i32 0, i32 5
  store i32 -1, i32* %exit_y, align 4
  %30 = load %struct.maze*, %struct.maze** %m, align 8
  %exit_x = getelementptr inbounds %struct.maze, %struct.maze* %30, i32 0, i32 4
  store i32 -1, i32* %exit_x, align 8
  %31 = load %struct.maze*, %struct.maze** %m, align 8
  %start_y = getelementptr inbounds %struct.maze, %struct.maze* %31, i32 0, i32 3
  store i32 -1, i32* %start_y, align 4
  %32 = load %struct.maze*, %struct.maze** %m, align 8
  %start_x = getelementptr inbounds %struct.maze, %struct.maze* %32, i32 0, i32 2
  store i32 -1, i32* %start_x, align 8
  store i32 0, i32* %y41, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc76, %for.end
  %33 = load i32, i32* %y41, align 4
  %34 = load %struct.maze*, %struct.maze** %m, align 8
  %height43 = getelementptr inbounds %struct.maze, %struct.maze* %34, i32 0, i32 1
  %35 = load i32, i32* %height43, align 4
  %cmp44 = icmp slt i32 %33, %35
  br i1 %cmp44, label %for.body46, label %for.end78

for.body46:                                       ; preds = %for.cond42
  store i32 0, i32* %x, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc73, %for.body46
  %36 = load i32, i32* %x, align 4
  %37 = load %struct.maze*, %struct.maze** %m, align 8
  %width48 = getelementptr inbounds %struct.maze, %struct.maze* %37, i32 0, i32 0
  %38 = load i32, i32* %width48, align 8
  %cmp49 = icmp slt i32 %36, %38
  br i1 %cmp49, label %for.body51, label %for.end75

for.body51:                                       ; preds = %for.cond47
  %39 = load %struct.maze*, %struct.maze** %m, align 8
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y41, align 4
  %call52 = call i8* @loc(%struct.maze* %39, i32 %40, i32 %41)
  %42 = load i8, i8* %call52, align 1
  store i8 %42, i8* %c, align 1
  %43 = load i8, i8* %c, align 1
  %conv53 = sext i8 %43 to i32
  %cmp54 = icmp eq i32 %conv53, 83
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %for.body51
  %44 = load i32, i32* %x, align 4
  %45 = load %struct.maze*, %struct.maze** %m, align 8
  %start_x57 = getelementptr inbounds %struct.maze, %struct.maze* %45, i32 0, i32 2
  store i32 %44, i32* %start_x57, align 8
  %46 = load i32, i32* %y41, align 4
  %47 = load %struct.maze*, %struct.maze** %m, align 8
  %start_y58 = getelementptr inbounds %struct.maze, %struct.maze* %47, i32 0, i32 3
  store i32 %46, i32* %start_y58, align 4
  br label %if.end72

if.else:                                          ; preds = %for.body51
  %48 = load i8, i8* %c, align 1
  %conv59 = sext i8 %48 to i32
  %cmp60 = icmp eq i32 %conv59, 69
  br i1 %cmp60, label %if.then62, label %if.else65

if.then62:                                        ; preds = %if.else
  %49 = load i32, i32* %x, align 4
  %50 = load %struct.maze*, %struct.maze** %m, align 8
  %exit_x63 = getelementptr inbounds %struct.maze, %struct.maze* %50, i32 0, i32 4
  store i32 %49, i32* %exit_x63, align 8
  %51 = load i32, i32* %y41, align 4
  %52 = load %struct.maze*, %struct.maze** %m, align 8
  %exit_y64 = getelementptr inbounds %struct.maze, %struct.maze* %52, i32 0, i32 5
  store i32 %51, i32* %exit_y64, align 4
  br label %if.end71

if.else65:                                        ; preds = %if.else
  %53 = load i8, i8* %c, align 1
  %conv66 = sext i8 %53 to i32
  %cmp67 = icmp ne i32 %conv66, 46
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.else65
  %54 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %54)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.else65
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then62
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then56
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %55 = load i32, i32* %x, align 4
  %inc74 = add nsw i32 %55, 1
  store i32 %inc74, i32* %x, align 4
  br label %for.cond47

for.end75:                                        ; preds = %for.cond47
  br label %for.inc76

for.inc76:                                        ; preds = %for.end75
  %56 = load i32, i32* %y41, align 4
  %inc77 = add nsw i32 %56, 1
  store i32 %inc77, i32* %y41, align 4
  br label %for.cond42

for.end78:                                        ; preds = %for.cond42
  %57 = load %struct.maze*, %struct.maze** %m, align 8
  %start_x79 = getelementptr inbounds %struct.maze, %struct.maze* %57, i32 0, i32 2
  %58 = load i32, i32* %start_x79, align 8
  %cmp80 = icmp eq i32 %58, -1
  br i1 %cmp80, label %if.then93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end78
  %59 = load %struct.maze*, %struct.maze** %m, align 8
  %start_y82 = getelementptr inbounds %struct.maze, %struct.maze* %59, i32 0, i32 3
  %60 = load i32, i32* %start_y82, align 4
  %cmp83 = icmp eq i32 %60, -1
  br i1 %cmp83, label %if.then93, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false
  %61 = load %struct.maze*, %struct.maze** %m, align 8
  %exit_x86 = getelementptr inbounds %struct.maze, %struct.maze* %61, i32 0, i32 4
  %62 = load i32, i32* %exit_x86, align 8
  %cmp87 = icmp eq i32 %62, -1
  br i1 %cmp87, label %if.then93, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %63 = load %struct.maze*, %struct.maze** %m, align 8
  %exit_y90 = getelementptr inbounds %struct.maze, %struct.maze* %63, i32 0, i32 5
  %64 = load i32, i32* %exit_y90, align 4
  %cmp91 = icmp eq i32 %64, -1
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.lhs.false89, %lor.lhs.false85, %lor.lhs.false, %for.end78
  %65 = load %struct.maze*, %struct.maze** %m, align 8
  call void @invalid_maze(%struct.maze* %65)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %lor.lhs.false89
  store i32 0, i32* %y95, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc114, %if.end94
  %66 = load i32, i32* %y95, align 4
  %67 = load %struct.maze*, %struct.maze** %m, align 8
  %height97 = getelementptr inbounds %struct.maze, %struct.maze* %67, i32 0, i32 1
  %68 = load i32, i32* %height97, align 4
  %cmp98 = icmp slt i32 %66, %68
  br i1 %cmp98, label %for.body100, label %for.end116

for.body100:                                      ; preds = %for.cond96
  store i32 0, i32* %x101, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc111, %for.body100
  %69 = load i32, i32* %x101, align 4
  %70 = load %struct.maze*, %struct.maze** %m, align 8
  %width103 = getelementptr inbounds %struct.maze, %struct.maze* %70, i32 0, i32 0
  %71 = load i32, i32* %width103, align 8
  %cmp104 = icmp slt i32 %69, %71
  br i1 %cmp104, label %for.body106, label %for.end113

for.body106:                                      ; preds = %for.cond102
  %72 = load i32, i32* %x101, align 4
  %73 = load %struct.maze*, %struct.maze** %m, align 8
  %pos_x = getelementptr inbounds %struct.maze, %struct.maze* %73, i32 0, i32 6
  store i32 %72, i32* %pos_x, align 8
  %74 = load i32, i32* %y95, align 4
  %75 = load %struct.maze*, %struct.maze** %m, align 8
  %pos_y = getelementptr inbounds %struct.maze, %struct.maze* %75, i32 0, i32 7
  store i32 %74, i32* %pos_y, align 4
  %76 = load %struct.maze*, %struct.maze** %m, align 8
  %call107 = call zeroext i1 @is_wall(%struct.maze* %76, i32 0)
  %77 = load %struct.maze*, %struct.maze** %m, align 8
  %call108 = call zeroext i1 @is_wall(%struct.maze* %77, i32 2)
  %78 = load %struct.maze*, %struct.maze** %m, align 8
  %call109 = call zeroext i1 @is_wall(%struct.maze* %78, i32 3)
  %79 = load %struct.maze*, %struct.maze** %m, align 8
  %call110 = call zeroext i1 @is_wall(%struct.maze* %79, i32 1)
  br label %for.inc111

for.inc111:                                       ; preds = %for.body106
  %80 = load i32, i32* %x101, align 4
  %inc112 = add nsw i32 %80, 1
  store i32 %inc112, i32* %x101, align 4
  br label %for.cond102

for.end113:                                       ; preds = %for.cond102
  br label %for.inc114

for.inc114:                                       ; preds = %for.end113
  %81 = load i32, i32* %y95, align 4
  %inc115 = add nsw i32 %81, 1
  store i32 %inc115, i32* %y95, align 4
  br label %for.cond96

for.end116:                                       ; preds = %for.cond96
  %82 = load %struct.maze*, %struct.maze** %m, align 8
  %start_x117 = getelementptr inbounds %struct.maze, %struct.maze* %82, i32 0, i32 2
  %83 = load i32, i32* %start_x117, align 8
  %84 = load %struct.maze*, %struct.maze** %m, align 8
  %pos_x118 = getelementptr inbounds %struct.maze, %struct.maze* %84, i32 0, i32 6
  store i32 %83, i32* %pos_x118, align 8
  %85 = load %struct.maze*, %struct.maze** %m, align 8
  %start_y119 = getelementptr inbounds %struct.maze, %struct.maze* %85, i32 0, i32 3
  %86 = load i32, i32* %start_y119, align 4
  %87 = load %struct.maze*, %struct.maze** %m, align 8
  %pos_y120 = getelementptr inbounds %struct.maze, %struct.maze* %87, i32 0, i32 7
  store i32 %86, i32* %pos_y120, align 4
  %88 = load %struct.maze*, %struct.maze** %m, align 8
  ret %struct.maze* %88
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
