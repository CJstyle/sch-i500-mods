.class Lcom/sec/android/app/camera/AbstractCameraActivity$7;
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
    .line 703
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$7;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 705
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1

    .line 706
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 711
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 708
    :cond_1
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 709
    const/4 v0, 0x1

    goto :goto_0
.end method
