.class Lcom/sec/android/app/camera/widget/TwGridView$3;
.super Ljava/lang/Object;
.source "TwGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView$3;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 651
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$3;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollDown()V

    goto :goto_0

    .line 654
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$3;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollUp()V

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
