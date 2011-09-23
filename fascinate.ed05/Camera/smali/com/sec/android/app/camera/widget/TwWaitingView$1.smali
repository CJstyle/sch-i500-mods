.class Lcom/sec/android/app/camera/widget/TwWaitingView$1;
.super Ljava/lang/Object;
.source "TwWaitingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwWaitingView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwWaitingView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwWaitingView;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwWaitingView$1;->this$0:Lcom/sec/android/app/camera/widget/TwWaitingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView$1;->this$0:Lcom/sec/android/app/camera/widget/TwWaitingView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwWaitingView$1;->this$0:Lcom/sec/android/app/camera/widget/TwWaitingView;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwWaitingView;->access$000(Lcom/sec/android/app/camera/widget/TwWaitingView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwWaitingView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView$1;->this$0:Lcom/sec/android/app/camera/widget/TwWaitingView;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->access$000(Lcom/sec/android/app/camera/widget/TwWaitingView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 61
    return-void
.end method
