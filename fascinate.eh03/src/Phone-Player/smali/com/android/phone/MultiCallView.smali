.class public Lcom/android/phone/MultiCallView;
.super Landroid/widget/LinearLayout;
.source "MultiCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentPhone:Lcom/android/internal/telephony/Phone;

.field private mContext:Landroid/content/Context;

.field private mFirstInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mImagView:Landroid/widget/ImageView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsFirstCallInfoForeground:Z

.field private mTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/phone/InCallScreen;)V
    .locals 4
    .parameter "inCallScreen"

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030033

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 69
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mTimeText:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mImagView:Landroid/widget/ImageView;

    .line 71
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mImagView:Landroid/widget/ImageView;

    const v2, 0x7f020135

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    iput-boolean v3, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 94
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 105
    const-string v1, "MultiCAllView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 96
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 99
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 102
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800a0 -> :sswitch_1
        0x7f0800a1 -> :sswitch_2
        0x7f0800dc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    return-void
.end method

.method public resetOriginalState()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    return-void
.end method

.method public updateState(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 87
    return-void
.end method
