.class public Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RichInformationMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$000(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main, Sweep, MotionEvent : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 944
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$000(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fling"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$300(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 978
    :goto_0
    return v1

    .line 951
    :cond_0
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 952
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 953
    .local v0, dx:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 956
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_2

    .line 957
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$408(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I

    .line 958
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$400(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I

    move-result v1

    if-le v1, v5, :cond_1

    .line 959
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1, v4}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$402(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)I

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v2}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$400(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$200(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)V

    :goto_1
    move v1, v3

    .line 968
    goto :goto_0

    .line 963
    :cond_2
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$410(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I

    .line 964
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$400(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I

    move-result v1

    if-gez v1, :cond_3

    .line 965
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1, v5}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$402(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)I

    .line 966
    :cond_3
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v2}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$400(Lcom/android/music/common/richinfo/RichInformationMainActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$200(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)V

    goto :goto_1

    .line 970
    :cond_4
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$000(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main, Sweep (no fling) - dx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 972
    goto/16 :goto_0

    .line 976
    .end local v0           #dx:I
    :cond_5
    iget-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$OnGestureListener;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$000(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main, Sweep (Event null) -  Event1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Event2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 978
    goto/16 :goto_0
.end method
