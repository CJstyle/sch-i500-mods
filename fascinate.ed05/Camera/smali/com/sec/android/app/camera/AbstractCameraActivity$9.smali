.class Lcom/sec/android/app/camera/AbstractCameraActivity$9;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$9;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 750
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$9;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    move v0, v1

    .line 762
    :goto_0
    return v0

    .line 755
    :cond_0
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1

    move v0, v1

    .line 757
    goto :goto_0

    .line 759
    :cond_1
    const/16 v0, 0x54

    if-ne p2, v0, :cond_2

    move v0, v1

    .line 760
    goto :goto_0

    .line 762
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
