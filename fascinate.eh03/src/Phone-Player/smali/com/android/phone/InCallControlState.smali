.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRejectWithMsg:Z

.field public canSwap:Z

.field public canTransfer:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field public isThreeWayCall:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "phone"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 91
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    return-void
.end method


# virtual methods
.method public update()V
    .locals 14

    .prologue
    .line 100
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 101
    .local v10, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_a

    const/4 v11, 0x1

    move v5, v11

    .line 103
    .local v5, hasRingingCall:Z
    :goto_0
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 104
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 105
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x1

    move v3, v11

    .line 106
    .local v3, hasActiveCall:Z
    :goto_1
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v11, 0x1

    move v4, v11

    .line 109
    .local v4, hasHoldingCall:Z
    :goto_2
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 110
    .local v8, phoneType:I
    const/4 v11, 0x1

    if-ne v8, v11, :cond_e

    .line 114
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 115
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v11

    if-nez v11, :cond_d

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 129
    :goto_4
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-boolean v11, v11, Lcom/android/phone/InCallScreen;->mIsAddEnabled:Z

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 130
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    and-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 131
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-nez v12, :cond_10

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v12

    if-nez v12, :cond_10

    const/4 v12, 0x1

    :goto_5
    and-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 133
    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 135
    .local v0, c:Lcom/android/internal/telephony/Connection;
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    const/4 v12, 0x1

    :goto_6
    and-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 138
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 139
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 140
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isThreeWayCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->isThreeWayCall:Z

    .line 141
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    .line 144
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 145
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 146
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 154
    :goto_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_13

    const/4 v11, 0x1

    :goto_8
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 155
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 160
    const/4 v11, 0x2

    if-ne v8, v11, :cond_16

    .line 161
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 162
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    const/4 v6, 0x0

    .line 163
    .local v6, isEmergencyCall:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 165
    :cond_1
    if-eqz v6, :cond_14

    .line 166
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 167
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 179
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #isEmergencyCall:Z
    :cond_2
    :goto_9
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 183
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 186
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1a

    .line 192
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 193
    if-eqz v4, :cond_18

    if-nez v3, :cond_18

    const/4 v11, 0x1

    :goto_a
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 194
    if-eqz v3, :cond_3

    if-nez v4, :cond_19

    :cond_3
    if-eqz v3, :cond_4

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_19

    :cond_4
    const/4 v11, 0x1

    :goto_b
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 206
    :cond_5
    :goto_c
    if-eqz v5, :cond_1b

    .line 210
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    .line 211
    .local v9, presentation:I
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v11, v10}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, number:Ljava/lang/String;
    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v9, v11, :cond_6

    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v9, v11, :cond_7

    .line 214
    :cond_6
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    .line 218
    :cond_7
    if-eqz v7, :cond_9

    .line 219
    const-string v11, "-2"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "-1"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 221
    :cond_8
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    .line 224
    :cond_9
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    .line 228
    .end local v7           #number:Ljava/lang/String;
    .end local v9           #presentation:I
    :goto_d
    return-void

    .line 101
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    .end local v8           #phoneType:I
    :cond_a
    const/4 v11, 0x0

    move v5, v11

    goto/16 :goto_0

    .line 105
    .restart local v1       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #hasRingingCall:Z
    :cond_b
    const/4 v11, 0x0

    move v3, v11

    goto/16 :goto_1

    .line 106
    .restart local v3       #hasActiveCall:Z
    :cond_c
    const/4 v11, 0x0

    move v4, v11

    goto/16 :goto_2

    .line 115
    .restart local v4       #hasHoldingCall:Z
    .restart local v8       #phoneType:I
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 117
    :cond_e
    const/4 v11, 0x2

    if-ne v8, v11, :cond_f

    .line 119
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 120
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_4

    .line 122
    :cond_f
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

    .line 131
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 135
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 148
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_12
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 149
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_7

    .line 154
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 169
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isEmergencyCall:Z
    :cond_14
    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_15

    const/4 v11, 0x1

    :goto_e
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 170
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_9

    .line 169
    :cond_15
    const/4 v11, 0x0

    goto :goto_e

    .line 172
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #isEmergencyCall:Z
    :cond_16
    const/4 v11, 0x1

    if-ne v8, v11, :cond_2

    .line 173
    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_17

    const/4 v11, 0x1

    :goto_f
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 174
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_9

    .line 173
    :cond_17
    const/4 v11, 0x0

    goto :goto_f

    .line 193
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 194
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 196
    :cond_1a
    const/4 v11, 0x2

    if-ne v8, v11, :cond_5

    .line 198
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 199
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 200
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_c

    .line 226
    :cond_1b
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto/16 :goto_d
.end method
