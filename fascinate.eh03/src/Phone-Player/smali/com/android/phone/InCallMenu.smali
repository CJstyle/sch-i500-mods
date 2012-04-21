.class Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# instance fields
.field mAddCall:Lcom/android/phone/InCallMenuItemView;

.field mAnswer:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

.field mBluetooth:Lcom/android/phone/InCallMenuItemView;

.field mEndCall:Lcom/android/phone/InCallMenuItemView;

.field mHold:Lcom/android/phone/InCallMenuItemView;

.field mIgnore:Lcom/android/phone/InCallMenuItemView;

.field private mInCallMenuView:Lcom/android/phone/InCallMenuView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mManageConference:Lcom/android/phone/InCallMenuItemView;

.field mMergeCalls:Lcom/android/phone/InCallMenuItemView;

.field mMute:Lcom/android/phone/InCallMenuItemView;

.field mShowDialpad:Lcom/android/phone/InCallMenuItemView;

.field mSpeaker:Lcom/android/phone/InCallMenuItemView;

.field mSwapCalls:Lcom/android/phone/InCallMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 74
    return-void
.end method


# virtual methods
.method clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 82
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->clearInCallScreenReference()V

    .line 83
    :cond_0
    return-void
.end method

.method getView()Lcom/android/phone/InCallMenuView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    return-object v0
.end method

.method initMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 105
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x10300a6

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 109
    .local v2, wrappedContext:Landroid/content/Context;
    new-instance v3, Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v2, v4}, Lcom/android/phone/InCallMenuView;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    .line 115
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    .line 116
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 117
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0084

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 119
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x10801ca

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 121
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    .line 122
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 123
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0085

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 125
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0201d4

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 127
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    .line 128
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 129
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0080

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 131
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0201d5

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 133
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    .line 134
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 135
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0083

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x1080033

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 139
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    .line 140
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 141
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0081

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 143
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0201df

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 145
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    .line 146
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 147
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0082

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 149
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0201d6

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 155
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    .line 156
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 157
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d007d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 159
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 161
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    .line 162
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 163
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d007c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 165
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 167
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    .line 168
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 169
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d007e

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 171
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 173
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    .line 174
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 175
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d007f

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 177
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 179
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    .line 180
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 181
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0087

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 184
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    .line 185
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 186
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0088

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 189
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    .line 190
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 191
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d008c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 194
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    .line 195
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 196
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d008d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 215
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 217
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 218
    .local v1, phoneType:I
    if-ne v1, v5, :cond_0

    .line 219
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 224
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 225
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 226
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 227
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 233
    if-ne v1, v6, :cond_1

    .line 234
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 235
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 243
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 244
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 245
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 247
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v3}, Lcom/android/phone/InCallMenuView;->dumpState()V

    .line 248
    return-void

    .line 236
    :cond_1
    if-ne v1, v5, :cond_2

    .line 237
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 238
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 239
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    goto :goto_0

    .line 241
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method updateItems(Lcom/android/internal/telephony/Phone;)Z
    .locals 14
    .parameter "phone"

    .prologue
    .line 267
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_0

    .line 269
    const/4 v11, 0x0

    .line 465
    :goto_0
    return v11

    .line 272
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x1

    move v4, v11

    .line 273
    .local v4, hasRingingCall:Z
    :goto_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    move v2, v11

    .line 274
    .local v2, hasActiveCall:Z
    :goto_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 275
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    move v3, v11

    .line 278
    .local v3, hasHoldingCall:Z
    :goto_3
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 279
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 280
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 281
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 282
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 284
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 285
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 286
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 287
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 288
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 289
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 290
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 291
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 292
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 294
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    .line 296
    .local v6, inConferenceCall:Z
    if-nez v6, :cond_4

    const/4 v11, 0x1

    move v9, v11

    .line 297
    .local v9, showShowDialpad:Z
    :goto_4
    if-eqz v9, :cond_5

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    move v0, v11

    .line 298
    .local v0, enableShowDialpad:Z
    :goto_5
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v9}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 299
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 300
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v7

    .line 301
    .local v7, isDtmfDialerOpened:Z
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    if-eqz v7, :cond_6

    const v12, 0x7f0d0086

    :goto_6
    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 305
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 306
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 308
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 309
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 310
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    .line 311
    .local v10, speakerOn:Z
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v10}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 313
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 314
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 272
    .end local v0           #enableShowDialpad:Z
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #hasRingingCall:Z
    .end local v6           #inConferenceCall:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v9           #showShowDialpad:Z
    .end local v10           #speakerOn:Z
    :cond_1
    const/4 v11, 0x0

    move v4, v11

    goto/16 :goto_1

    .line 273
    .restart local v4       #hasRingingCall:Z
    :cond_2
    const/4 v11, 0x0

    move v2, v11

    goto/16 :goto_2

    .line 275
    .restart local v1       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v2       #hasActiveCall:Z
    :cond_3
    const/4 v11, 0x0

    move v3, v11

    goto/16 :goto_3

    .line 296
    .restart local v3       #hasHoldingCall:Z
    .restart local v6       #inConferenceCall:Z
    :cond_4
    const/4 v11, 0x0

    move v9, v11

    goto :goto_4

    .line 297
    .restart local v9       #showShowDialpad:Z
    :cond_5
    const/4 v11, 0x0

    move v0, v11

    goto :goto_5

    .line 301
    .restart local v0       #enableShowDialpad:Z
    .restart local v7       #isDtmfDialerOpened:Z
    :cond_6
    const v12, 0x7f0d0085

    goto :goto_6

    .line 318
    .end local v0           #enableShowDialpad:Z
    .end local v6           #inConferenceCall:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v9           #showShowDialpad:Z
    :cond_7
    if-eqz v4, :cond_b

    .line 323
    if-eqz v2, :cond_a

    if-nez v3, :cond_a

    .line 324
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 326
    .local v8, phoneType:I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_8

    .line 327
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 328
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 329
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 330
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 333
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 334
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 350
    :goto_7
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 351
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 352
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 353
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 354
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 355
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 356
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 357
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 358
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 363
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 365
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 335
    :cond_8
    const/4 v11, 0x1

    if-ne v8, v11, :cond_9

    .line 336
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 337
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 338
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 339
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 342
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 343
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 345
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto :goto_7

    .line 347
    :cond_9
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 369
    .end local v8           #phoneType:I
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 378
    :cond_b
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 383
    .local v5, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 384
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 396
    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-nez v11, :cond_c

    const/4 v11, 0x1

    move v9, v11

    .line 397
    .restart local v9       #showShowDialpad:Z
    :goto_8
    if-eqz v9, :cond_d

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    move v0, v11

    .line 398
    .restart local v0       #enableShowDialpad:Z
    :goto_9
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v9}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 399
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 400
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v12, :cond_e

    const v12, 0x7f0d0086

    :goto_a
    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 408
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 409
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 412
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 413
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 416
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 417
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 418
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 419
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 422
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 423
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 424
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 429
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 430
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 431
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 436
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 437
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 438
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 441
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 442
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 443
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 448
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 449
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 450
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 451
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 455
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 456
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 457
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 458
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 463
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 465
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 396
    .end local v0           #enableShowDialpad:Z
    .end local v9           #showShowDialpad:Z
    :cond_c
    const/4 v11, 0x0

    move v9, v11

    goto/16 :goto_8

    .line 397
    .restart local v9       #showShowDialpad:Z
    :cond_d
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_9

    .line 400
    .restart local v0       #enableShowDialpad:Z
    :cond_e
    const v12, 0x7f0d0085

    goto/16 :goto_a
.end method
