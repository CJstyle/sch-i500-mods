.class Lcom/sec/android/app/camera/AbstractCameraActivity$13;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery()V
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
    .line 945
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

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

    .line 946
    sparse-switch p2, :sswitch_data_0

    .line 964
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 951
    goto :goto_0

    .line 953
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    move v0, v1

    .line 956
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 960
    goto :goto_0

    .line 946
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
        0x54 -> :sswitch_2
    .end sparse-switch
.end method
