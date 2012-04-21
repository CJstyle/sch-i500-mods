.class Lcom/android/phone/CallCard$1;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-static {}, Lcom/android/phone/CallCard;->access$000()Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-static {v0}, Lcom/android/phone/CallCard;->access$108(Lcom/android/phone/CallCard;)I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 173
    goto :goto_1

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCallInfoTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #setter for: Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I
    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->access$102(Lcom/android/phone/CallCard;I)I

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
