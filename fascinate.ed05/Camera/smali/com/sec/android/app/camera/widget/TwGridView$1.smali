.class Lcom/sec/android/app/camera/widget/TwGridView$1;
.super Landroid/widget/GridView;
.source "TwGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwGridView;->initializeGridView(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView$1;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 330
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 328
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 342
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 340
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method
