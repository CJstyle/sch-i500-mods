.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentPhone:Lcom/android/internal/telephony/Phone;

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Landroid/view/View;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mSaveButtonFrame:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 44
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 46
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    const v0, 0x7f08008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f080090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f08008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    .line 58
    return-void
.end method

.method private makePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const-string v3, "-"

    .line 219
    move-object v0, p1

    .line 220
    .local v0, temp:Ljava/lang/String;
    :goto_0
    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 221
    const-string v1, "-"

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private redial(Ljava/lang/String;)V
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x0

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, voiceMailString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getVoiceMailTag()Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "voicemail"

    const-string v4, ""

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 215
    :goto_0
    return-void

    .line 212
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "tel"

    invoke-static {v3, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleCallKey()V
    .locals 3

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 198
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 200
    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->redial(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030021

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 70
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const-string v8, "phone"

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 141
    .local v1, id:I
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 142
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, phoneNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 145
    .local v5, voiceMailString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getVoiceMailTag()Ljava/lang/String;

    move-result-object v5

    .line 148
    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    :cond_1
    const-string v6, "-2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "-1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 151
    packed-switch v1, :pswitch_data_0

    .line 188
    const-string v6, "EndCallButtonsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick: unexpected click: View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    :goto_0
    return-void

    .line 153
    :pswitch_0
    if-eqz v4, :cond_2

    .line 157
    invoke-direct {p0, v4}, Lcom/android/phone/EndCallButtonsView;->redial(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_1
    if-eqz v4, :cond_2

    .line 163
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "sms"

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_2
    if-eqz v4, :cond_2

    .line 171
    invoke-direct {p0, v4}, Lcom/android/phone/EndCallButtonsView;->makePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v2, insertIntent:Landroid/content/Intent;
    const-string v6, "phone"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    .end local v2           #insertIntent:Landroid/content/Intent;
    :pswitch_3
    if-eqz v4, :cond_2

    .line 180
    new-instance v2, Landroid/content/Intent;

    const-string v6, "intent.action.PICK_EDIT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v2       #insertIntent:Landroid/content/Intent;
    const-string v6, "phone"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v6, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v6, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f08008d
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 76
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/Phone;I)V
    .locals 16
    .parameter "phone"
    .parameter "orientation"

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move v13, v0

    move v0, v13

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    .line 80
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 81
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    move v10, v13

    .line 82
    .local v10, isPortrait:Z
    :goto_0
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Landroid/view/View;

    move-object v13, v0

    if-nez v13, :cond_0

    .line 83
    const v13, 0x7f080091

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    .line 84
    .local v7, endCallButtonsLandscapeStub:Landroid/view/ViewStub;
    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mLandscape:Landroid/view/View;

    .line 86
    .end local v7           #endCallButtonsLandscapeStub:Landroid/view/ViewStub;
    :cond_0
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object v13, v0

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object v13, v0

    if-eqz v10, :cond_7

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Landroid/view/View;

    move-object v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Landroid/view/View;

    move-object v13, v0

    if-nez v10, :cond_8

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .end local v10           #isPortrait:Z
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;

    move-object v13, v0

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 92
    .local v2, call:Lcom/android/internal/telephony/Call;
    const/4 v6, 0x0

    .line 93
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    .line 94
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 100
    :goto_4
    if-eqz v6, :cond_4

    .line 101
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    .line 102
    .local v9, isEmergencyCall:Z
    if-nez v9, :cond_b

    const/4 v13, 0x1

    move v5, v13

    .line 103
    .local v5, canVoiceCall:Z
    :goto_5
    if-nez v9, :cond_c

    const/4 v13, 0x1

    move v4, v13

    .line 104
    .local v4, canSendMsgButton:Z
    :goto_6
    const/4 v3, 0x0

    .line 105
    .local v3, canSaveCall:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v12

    .line 106
    .local v12, presentation:I
    sget v13, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v12, v13, :cond_e

    sget v13, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v12, v13, :cond_e

    .line 108
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v11

    .line 109
    .local v11, o:Ljava/lang/Object;
    instance-of v13, v11, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v13, :cond_3

    .line 110
    move-object v0, v11

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v8, v0

    .line 111
    .local v8, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v9, :cond_d

    iget-boolean v13, v8, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v13, :cond_d

    const/4 v13, 0x1

    move v3, v13

    .line 114
    :goto_7
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isCustomerServiceNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 118
    :cond_2
    const/4 v3, 0x0

    .line 119
    const/4 v4, 0x0

    .line 126
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v11           #o:Ljava/lang/Object;
    :cond_3
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object v13, v0

    if-eqz v5, :cond_f

    const/4 v14, 0x1

    :goto_9
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object v13, v0

    if-eqz v4, :cond_10

    const/4 v14, 0x1

    :goto_a
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    move-object v13, v0

    if-eqz v3, :cond_11

    const/4 v14, 0x0

    :goto_b
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .end local v3           #canSaveCall:Z
    .end local v4           #canSendMsgButton:Z
    .end local v5           #canVoiceCall:Z
    .end local v9           #isEmergencyCall:Z
    .end local v12           #presentation:I
    :cond_4
    return-void

    .line 81
    .end local v2           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    :cond_5
    const/4 v13, 0x0

    move v10, v13

    goto/16 :goto_0

    .line 86
    .restart local v10       #isPortrait:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Landroid/view/View;

    move-object v13, v0

    goto/16 :goto_1

    .line 87
    :cond_7
    const/16 v14, 0x8

    goto/16 :goto_2

    .line 88
    :cond_8
    const/16 v14, 0x8

    goto/16 :goto_3

    .line 95
    .end local v10           #isPortrait:Z
    .restart local v2       #call:Lcom/android/internal/telephony/Call;
    .restart local v6       #conn:Lcom/android/internal/telephony/Connection;
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 96
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto/16 :goto_4

    .line 98
    :cond_a
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected phone type: isContactExist: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 102
    .restart local v9       #isEmergencyCall:Z
    :cond_b
    const/4 v13, 0x0

    move v5, v13

    goto/16 :goto_5

    .line 103
    .restart local v5       #canVoiceCall:Z
    :cond_c
    const/4 v13, 0x0

    move v4, v13

    goto/16 :goto_6

    .line 111
    .restart local v3       #canSaveCall:Z
    .restart local v4       #canSendMsgButton:Z
    .restart local v8       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v11       #o:Ljava/lang/Object;
    .restart local v12       #presentation:I
    :cond_d
    const/4 v13, 0x0

    move v3, v13

    goto/16 :goto_7

    .line 123
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v11           #o:Ljava/lang/Object;
    :cond_e
    const/4 v5, 0x0

    .line 124
    const/4 v4, 0x0

    goto :goto_8

    .line 126
    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 127
    :cond_10
    const/4 v14, 0x0

    goto :goto_a

    .line 128
    :cond_11
    const/4 v14, 0x4

    goto :goto_b
.end method
