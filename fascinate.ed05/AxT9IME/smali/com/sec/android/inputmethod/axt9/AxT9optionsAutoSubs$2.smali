.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 290
    .local v0, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)I

    .line 293
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
