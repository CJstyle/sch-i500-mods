.class Lcom/sec/android/app/camera/AbstractCameraActivity$4;
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
    .line 694
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

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
    .line 695
    sparse-switch p2, :sswitch_data_0

    .line 706
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 698
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 701
    :sswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
