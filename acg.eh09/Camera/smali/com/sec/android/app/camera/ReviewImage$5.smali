.class Lcom/sec/android/app/camera/ReviewImage$5;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ReviewImage;->setupOnTouchListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$5;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$5;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$500(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 334
    const/4 v0, 0x0

    return v0
.end method
