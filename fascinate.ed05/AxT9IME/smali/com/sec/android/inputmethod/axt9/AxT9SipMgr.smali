.class public Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
.super Ljava/lang/Object;
.source "AxT9SipMgr.java"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final TAG:Ljava/lang/String;

.field private mBkInputMethodType:I

.field mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mEditorType:I

.field private mInputMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodType:I

.field private mInputMode:I

.field private mInputModeCurrentIndex:I

.field mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

.field private mLatestTextInputMode:I

.field private mMaxNumEditorTypeEmailNUrl:I

.field private mMaxNumInputModeNumberNSymbol:I

.field private mMaxNumInputModeText:I

.field private mMmsRecipientLastInputMode:I

.field private mPreInputMethodType:I

.field private mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmailSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmoticonKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mpreInputMode:I

.field privateImeOptionsTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 6
    .parameter "axT9IME"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "AxT9IME"

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->DEBUG:Z

    .line 37
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->INFO:Z

    .line 38
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->ERROR:Z

    .line 39
    const-string v0, "AxT9IME"

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->TAG:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMode:I

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMaxNumEditorTypeEmailNUrl:I

    .line 92
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMaxNumInputModeText:I

    .line 93
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMaxNumInputModeNumberNSymbol:I

    .line 95
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputModeCurrentIndex:I

    .line 96
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mpreInputMode:I

    .line 97
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mLatestTextInputMode:I

    .line 99
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMmsRecipientLastInputMode:I

    .line 152
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mEditorType:I

    .line 235
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mBkInputMethodType:I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    .line 2804
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    .line 242
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 243
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeInputMethodList()I

    .line 244
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "AxT9IME"

    const-string v0, "AxT9SipMgr.AxT9SipMgr() : SIP List is empty! set to default(qwertykeyboard)"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    const-string v0, "qwertykeyboard"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->parseImTypeValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 250
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    if-ne v0, v4, :cond_1

    .line 251
    const-string v0, "AxT9IME"

    const-string v0, "AxT9SipMgr.AxT9SipMgr() : SIP default is not assigned! assign to default(qwertykeyboard)"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 254
    :cond_1
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mPreInputMethodType:I

    .line 261
    return-void
.end method

.method private getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .locals 8
    .parameter "inputmode"

    .prologue
    const v5, 0x7f050011

    const-string v7, "getCurrentRequestedKeyboard: not initialized."

    const-string v6, "AxT9IME"

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    const/4 v2, 0x0

    .line 604
    .local v2, vInputMethodType:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 607
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v5, 0x7f050017

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 609
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 611
    if-nez v0, :cond_0

    .line 612
    const-string v3, "AxT9IME"

    const-string v3, "getCurrentRequestedKeyboard: not initialized."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_0
    move-object v1, v0

    .line 692
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :goto_0
    return-object v1

    .line 617
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 620
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v5, 0x7f05000e

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 622
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 624
    if-nez v0, :cond_2

    .line 625
    const-string v3, "AxT9IME"

    const-string v3, "getCurrentRequestedKeyboard: not initialized."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_2
    move-object v1, v0

    .line 629
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto :goto_0

    .line 630
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 632
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 633
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 634
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 641
    :goto_1
    if-nez v0, :cond_4

    .line 642
    const-string v3, "AxT9IME"

    const-string v3, "getCurrentRequestedKeyboard: not initialized."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_4
    move-object v1, v0

    .line 646
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto :goto_0

    .line 636
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_5
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 637
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 647
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 649
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v5, 0x7f05000c

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 650
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 652
    if-nez v0, :cond_7

    .line 653
    const-string v3, "AxT9IME"

    const-string v3, "getCurrentRequestedKeyboard: not initialized."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_7
    move-object v1, v0

    .line 657
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto/16 :goto_0

    .line 660
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    .line 662
    packed-switch p1, :pswitch_data_0

    .line 683
    const-string v3, "AxT9IME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRequestedKeyboard() Unknown inputmode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_2
    if-nez v0, :cond_9

    .line 688
    const-string v3, "AxT9IME"

    const-string v3, "getCurrentRequestedKeyboard: not initialized."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_9
    move-object v1, v0

    .line 692
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto/16 :goto_0

    .line 665
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 666
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 667
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLandTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    goto :goto_2

    .line 669
    :cond_a
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    .line 671
    goto :goto_2

    .line 673
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 674
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLandNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    goto :goto_2

    .line 676
    :cond_b
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    .line 678
    goto :goto_2

    .line 680
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getSymbolKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    .line 681
    goto :goto_2

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getKeyboardXmlResId(I)I
    .locals 7
    .parameter "inputMethodType"

    .prologue
    const v5, 0x7f05003f

    const v4, 0x7f050030

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v6, "CH"

    .line 1557
    const/4 v0, -0x1

    .line 1559
    .local v0, resourceId:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageID()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1694
    if-ne p1, v3, :cond_1f

    .line 1695
    const v0, 0x7f050030

    .line 1704
    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    .line 1705
    const v0, 0x7f050001

    .line 1712
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1713
    const-string v1, "AxT9IME"

    const-string v2, "getKeyboardXmlResId: can not get resource ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_2
    return v0

    .line 1561
    :sswitch_0
    if-ne p1, v3, :cond_3

    .line 1562
    const v0, 0x7f050034

    goto :goto_0

    .line 1563
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1564
    const v0, 0x7f050006

    goto :goto_0

    .line 1565
    :cond_4
    if-nez p1, :cond_0

    .line 1566
    const v0, 0x7f050012

    goto :goto_0

    .line 1570
    :sswitch_1
    if-ne p1, v3, :cond_6

    .line 1571
    const-string v1, "CH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_5
    const v1, 0x7f050037

    move v0, v1

    goto :goto_2

    .line 1573
    :cond_6
    if-ne p1, v2, :cond_7

    .line 1574
    const v0, 0x7f050007

    goto :goto_0

    .line 1575
    :cond_7
    if-nez p1, :cond_0

    .line 1576
    const v0, 0x7f050015

    goto :goto_0

    .line 1581
    :sswitch_2
    if-ne p1, v3, :cond_9

    .line 1582
    const-string v1, "CH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v5

    :goto_3
    goto :goto_0

    :cond_8
    move v0, v4

    goto :goto_3

    .line 1584
    :cond_9
    if-ne p1, v2, :cond_a

    .line 1585
    const v0, 0x7f050004

    goto :goto_0

    .line 1586
    :cond_a
    if-nez p1, :cond_0

    .line 1587
    const v0, 0x7f05000a

    goto :goto_0

    .line 1593
    :sswitch_3
    if-ne p1, v3, :cond_b

    .line 1594
    const v0, 0x7f05003c

    goto :goto_0

    .line 1595
    :cond_b
    if-ne p1, v2, :cond_c

    .line 1596
    const v0, 0x7f050008

    goto :goto_0

    .line 1597
    :cond_c
    if-nez p1, :cond_0

    .line 1598
    const v0, 0x7f05001c

    goto :goto_0

    .line 1602
    :sswitch_4
    if-ne p1, v3, :cond_d

    .line 1603
    const v0, 0x7f05003e

    goto/16 :goto_0

    .line 1604
    :cond_d
    if-ne p1, v2, :cond_e

    .line 1605
    const v0, 0x7f050009

    goto/16 :goto_0

    .line 1606
    :cond_e
    if-nez p1, :cond_0

    .line 1607
    const v0, 0x7f050021

    goto/16 :goto_0

    .line 1611
    :sswitch_5
    if-ne p1, v3, :cond_10

    .line 1612
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v0, v4

    :goto_4
    goto/16 :goto_0

    :cond_f
    const v1, 0x7f050033

    move v0, v1

    goto :goto_4

    .line 1614
    :cond_10
    if-ne p1, v2, :cond_11

    .line 1615
    const v0, 0x7f050005

    goto/16 :goto_0

    .line 1616
    :cond_11
    if-nez p1, :cond_0

    .line 1617
    const v0, 0x7f050010

    goto/16 :goto_0

    .line 1621
    :sswitch_6
    if-ne p1, v3, :cond_12

    .line 1622
    const v0, 0x7f050038

    goto/16 :goto_0

    .line 1623
    :cond_12
    if-eq p1, v2, :cond_0

    .line 1625
    if-nez p1, :cond_0

    .line 1626
    const v0, 0x7f050016

    goto/16 :goto_0

    .line 1630
    :sswitch_7
    if-ne p1, v3, :cond_13

    .line 1631
    const v0, 0x7f050032

    goto/16 :goto_0

    .line 1632
    :cond_13
    if-ne p1, v2, :cond_14

    .line 1633
    const v0, 0x7f050004

    goto/16 :goto_0

    .line 1634
    :cond_14
    if-nez p1, :cond_0

    .line 1635
    const v0, 0x7f05000a

    goto/16 :goto_0

    .line 1639
    :sswitch_8
    if-ne p1, v3, :cond_15

    .line 1640
    const v0, 0x7f050036

    goto/16 :goto_0

    .line 1641
    :cond_15
    if-ne p1, v2, :cond_16

    .line 1642
    const v0, 0x7f050004

    goto/16 :goto_0

    .line 1643
    :cond_16
    if-nez p1, :cond_0

    .line 1644
    const v0, 0x7f05000a

    goto/16 :goto_0

    .line 1648
    :sswitch_9
    if-ne p1, v3, :cond_17

    .line 1649
    const v0, 0x7f050039

    goto/16 :goto_0

    .line 1650
    :cond_17
    if-ne p1, v2, :cond_18

    .line 1651
    const v0, 0x7f050004

    goto/16 :goto_0

    .line 1652
    :cond_18
    if-nez p1, :cond_0

    .line 1653
    const v0, 0x7f05000a

    goto/16 :goto_0

    .line 1657
    :sswitch_a
    if-ne p1, v3, :cond_19

    .line 1658
    const v0, 0x7f05003d

    goto/16 :goto_0

    .line 1659
    :cond_19
    if-ne p1, v2, :cond_1a

    .line 1660
    const v0, 0x7f050004

    goto/16 :goto_0

    .line 1661
    :cond_1a
    if-nez p1, :cond_0

    .line 1662
    const v0, 0x7f05000a

    goto/16 :goto_0

    .line 1666
    :sswitch_b
    if-ne p1, v3, :cond_1b

    .line 1667
    const v0, 0x7f050031

    goto/16 :goto_0

    .line 1668
    :cond_1b
    if-ne p1, v2, :cond_1c

    .line 1669
    const v0, 0x7f050004

    goto/16 :goto_0

    .line 1670
    :cond_1c
    if-nez p1, :cond_0

    .line 1671
    const v0, 0x7f05000b

    goto/16 :goto_0

    .line 1676
    :sswitch_c
    if-ne p1, v3, :cond_1d

    .line 1677
    const v0, 0x7f05003f

    goto/16 :goto_0

    .line 1678
    :cond_1d
    if-eq p1, v2, :cond_0

    .line 1680
    if-nez p1, :cond_0

    .line 1681
    const v0, 0x7f05000a

    goto/16 :goto_0

    .line 1685
    :sswitch_d
    if-ne p1, v3, :cond_1e

    .line 1686
    const v0, 0x7f05003f

    goto/16 :goto_0

    .line 1687
    :cond_1e
    if-eq p1, v2, :cond_0

    .line 1689
    if-nez p1, :cond_0

    .line 1690
    const v0, 0x7f05000a

    goto/16 :goto_0

    .line 1696
    :cond_1f
    if-ne p1, v2, :cond_20

    .line 1697
    const v0, 0x7f050004

    goto/16 :goto_0

    .line 1698
    :cond_20
    if-nez p1, :cond_0

    .line 1699
    const v0, 0x7f05000a

    goto/16 :goto_0

    .line 1706
    :cond_21
    const/4 v1, 0x4

    if-ne p1, v1, :cond_22

    .line 1707
    const v0, 0x7f050002

    goto/16 :goto_1

    .line 1708
    :cond_22
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 1709
    const v0, 0x7f050003

    goto/16 :goto_1

    .line 1559
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_b
        0x6 -> :sswitch_7
        0x7 -> :sswitch_5
        0x8 -> :sswitch_0
        0xb -> :sswitch_8
        0xc -> :sswitch_1
        0xe -> :sswitch_d
        0x10 -> :sswitch_2
        0x12 -> :sswitch_6
        0x14 -> :sswitch_9
        0x19 -> :sswitch_3
        0x1d -> :sswitch_a
        0x22 -> :sswitch_4
        0x59 -> :sswitch_c
        0x61 -> :sswitch_3
        0x80 -> :sswitch_c
    .end sparse-switch
.end method

.method private getLandNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .locals 6
    .parameter "inputMethod"

    .prologue
    const v5, 0x7f070082

    const v3, 0x7f050019

    const v4, 0x7f05003b

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 778
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 798
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 802
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 805
    :cond_1
    :goto_1
    return-object v0

    .line 699
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_2

    .line 700
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001a

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 704
    goto :goto_1

    .line 731
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 732
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_3

    .line 733
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050011

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 736
    :cond_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 737
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_5

    .line 738
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001e

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 740
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 741
    :cond_6
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 742
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_7

    .line 743
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001d

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 745
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 746
    :cond_8
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassFlagNullNumber()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 747
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_9

    .line 748
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 750
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 752
    :cond_a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_b

    .line 753
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 755
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 757
    goto/16 :goto_1

    .line 759
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 760
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_c

    .line 761
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000f

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 763
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_1

    .line 764
    :cond_d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 765
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_e

    .line 766
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000d

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 768
    :cond_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_1

    .line 769
    :cond_f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_10

    .line 771
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050020

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 773
    :cond_10
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_1

    .line 782
    :pswitch_3
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 785
    :pswitch_4
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f070083

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 789
    :pswitch_5
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f07008f

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 780
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getLandTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .locals 7
    .parameter "inputMethodType"

    .prologue
    const v6, 0x7f07008a

    .line 1894
    const/4 v1, 0x0

    .line 1909
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getKeyboardXmlResId(I)I

    move-result v3

    .line 1912
    .local v3, xmlLayoutResId:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    .line 1914
    .local v0, inputClass:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1948
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_0

    .line 1949
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1951
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1955
    :goto_0
    if-nez v1, :cond_1

    .line 1956
    const-string v4, "AxT9IME"

    const-string v5, "AxT9SipMgr.getLandTextLanguageKeyboard() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_1
    return-object v1

    .line 1925
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f07008b

    move v2, v4

    .line 1928
    .local v2, modeId:I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_2

    .line 1929
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1931
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1932
    goto :goto_0

    .end local v2           #modeId:I
    :cond_3
    move v2, v6

    .line 1925
    goto :goto_1

    .line 1934
    :pswitch_2
    const v2, 0x7f07008d

    .line 1935
    .restart local v2       #modeId:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_4

    .line 1936
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1938
    :cond_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1939
    goto :goto_0

    .line 1941
    .end local v2           #modeId:I
    :pswitch_3
    const v2, 0x7f07008c

    .line 1942
    .restart local v2       #modeId:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_5

    .line 1943
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1945
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1946
    goto :goto_0

    .line 1914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .locals 5
    .parameter "inputMethod"

    .prologue
    const v3, 0x7f070082

    const v4, 0x7f05003b

    .line 809
    const/4 v0, 0x0

    .line 811
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 919
    packed-switch p1, :pswitch_data_1

    .line 989
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 813
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_1

    .line 814
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001a

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 817
    goto :goto_0

    .line 841
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 842
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_2

    .line 843
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050011

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 846
    goto :goto_0

    .line 847
    :cond_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 848
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_4

    .line 849
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001e

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 851
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 852
    goto :goto_0

    .line 853
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 854
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_6

    .line 855
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001d

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 857
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 858
    goto :goto_0

    .line 859
    :cond_7
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassFlagNullNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_8

    .line 888
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050019

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 890
    :cond_8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 897
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 898
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_9

    .line 899
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000f

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 901
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 902
    goto/16 :goto_0

    .line 903
    :cond_a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 904
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_b

    .line 905
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050020

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 907
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 908
    goto/16 :goto_0

    .line 909
    :cond_c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_d

    .line 911
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000d

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 913
    :cond_d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 914
    goto/16 :goto_0

    .line 927
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_e

    .line 929
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 947
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 951
    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 953
    goto/16 :goto_0

    .line 931
    :pswitch_5
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 934
    :pswitch_6
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f070083

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 938
    :pswitch_7
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f07008f

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 961
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_f

    .line 962
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050018

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 964
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 966
    goto/16 :goto_0

    .line 968
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_10

    .line 969
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050001

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 971
    :cond_10
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 972
    goto/16 :goto_0

    .line 974
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_11

    .line 975
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050002

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 977
    :cond_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 978
    goto/16 :goto_0

    .line 980
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_12

    .line 981
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050003

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 983
    :cond_12
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 919
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 929
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getSymbolKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .locals 12
    .parameter "vInputMethodType"

    .prologue
    const/4 v11, 0x3

    const v10, 0x7f070083

    const v7, 0x7f070082

    const v9, 0x7f05001f

    const v8, 0x7f05003b

    .line 2098
    const/4 v0, 0x0

    .line 2100
    .local v0, SymbolKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    iget v3, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2101
    .local v3, inputType:I
    and-int/lit8 v1, v3, 0xf

    .line 2102
    .local v1, inputClass:I
    and-int/lit16 v4, v3, 0xff0

    .line 2103
    .local v4, inputVariation:I
    const v5, 0xfff000

    and-int v2, v3, v5

    .line 2105
    .local v2, inputFlag:I
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2141
    if-ne v1, v11, :cond_1

    .line 2142
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_0

    .line 2144
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f05001b

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2330
    :goto_0
    return-object v0

    .line 2154
    :cond_1
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_2

    .line 2156
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2174
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2178
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 2158
    :pswitch_0
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 2161
    :pswitch_1
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 2165
    :pswitch_2
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07008f

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_1

    .line 2182
    :cond_3
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v11, :cond_5

    .line 2183
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_4

    .line 2184
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f05001b

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2187
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 2189
    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 2196
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_6

    .line 2198
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 2216
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2220
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 2200
    :pswitch_3
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_2

    .line 2203
    :pswitch_4
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_2

    .line 2207
    :pswitch_5
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07008f

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_2

    .line 2222
    :cond_7
    if-nez p1, :cond_a

    .line 2244
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_8

    .line 2246
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 2282
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2248
    :pswitch_6
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2251
    :pswitch_7
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v9, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2254
    :pswitch_8
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070084

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2257
    :pswitch_9
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070085

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2260
    :pswitch_a
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2261
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070087

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2263
    :cond_9
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070086

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2267
    :pswitch_b
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070088

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2270
    :pswitch_c
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070089

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3

    .line 2284
    :cond_a
    const/4 v5, 0x1

    if-ne p1, v5, :cond_c

    .line 2285
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_b

    .line 2287
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    .line 2305
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2309
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2289
    :pswitch_d
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_4

    .line 2292
    :pswitch_e
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_4

    .line 2296
    :pswitch_f
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07008f

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_4

    .line 2310
    :cond_c
    if-ne p1, v11, :cond_e

    .line 2311
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_d

    .line 2312
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f050001

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2314
    :cond_d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2315
    :cond_e
    const/4 v5, 0x4

    if-ne p1, v5, :cond_10

    .line 2316
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_f

    .line 2317
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f050002

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2319
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2320
    :cond_10
    const/4 v5, 0x5

    if-ne p1, v5, :cond_12

    .line 2321
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_11

    .line 2322
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f050003

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2324
    :cond_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2326
    :cond_12
    const-string v5, "AxT9IME"

    const-string v6, "getSymbolKeyboard.PortraitMode.InputMethod Error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2198
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2246
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 2287
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .locals 9
    .parameter "inputMethodType"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1965
    const/4 v0, 0x0

    .line 1966
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getKeyboardXmlResId(I)I

    move-result v2

    .line 1969
    .local v2, xmlLayoutResId:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2090
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 2091
    const-string v3, "AxT9IME"

    const-string v4, "AxT9SipMgr.getTextLanguageKeyboard() error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_1
    return-object v0

    .line 1971
    :pswitch_1
    if-ne p1, v5, :cond_4

    .line 1972
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f07008b

    move v1, v3

    .line 1973
    .local v1, modeId:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_2

    .line 1974
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1976
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 1972
    .end local v1           #modeId:I
    :cond_3
    const v3, 0x7f07008a

    move v1, v3

    goto :goto_1

    .line 1977
    :cond_4
    if-ne p1, v4, :cond_6

    .line 1978
    const v1, 0x7f070079

    .line 1979
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_5

    .line 1980
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1982
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 1983
    .end local v1           #modeId:I
    :cond_6
    if-nez p1, :cond_9

    .line 1984
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f07007d

    move v1, v3

    .line 1985
    .restart local v1       #modeId:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_7

    .line 1986
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1988
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 1984
    .end local v1           #modeId:I
    :cond_8
    const v3, 0x7f07007c

    move v1, v3

    goto :goto_2

    .line 1989
    :cond_9
    if-ne p1, v6, :cond_b

    .line 1990
    const v1, 0x7f07007c

    .line 1991
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_a

    .line 1992
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1994
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 1995
    .end local v1           #modeId:I
    :cond_b
    if-ne p1, v7, :cond_d

    .line 1996
    const v1, 0x7f07007c

    .line 1997
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_c

    .line 1998
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2000
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2001
    .end local v1           #modeId:I
    :cond_d
    if-ne p1, v8, :cond_0

    .line 2002
    const v1, 0x7f07007c

    .line 2003
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_e

    .line 2004
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2006
    :cond_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2010
    .end local v1           #modeId:I
    :pswitch_2
    if-ne p1, v5, :cond_10

    .line 2011
    const v1, 0x7f07008d

    .line 2012
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_f

    .line 2013
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2015
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2016
    .end local v1           #modeId:I
    :cond_10
    if-ne p1, v4, :cond_12

    .line 2017
    const v1, 0x7f07007a

    .line 2018
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_11

    .line 2019
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2021
    :cond_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2022
    .end local v1           #modeId:I
    :cond_12
    if-nez p1, :cond_14

    .line 2023
    const v1, 0x7f07007e

    .line 2024
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_13

    .line 2025
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2027
    :cond_13
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2028
    .end local v1           #modeId:I
    :cond_14
    if-ne p1, v6, :cond_16

    .line 2029
    const v1, 0x7f07007c

    .line 2030
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_15

    .line 2031
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2033
    :cond_15
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2034
    .end local v1           #modeId:I
    :cond_16
    if-ne p1, v7, :cond_18

    .line 2035
    const v1, 0x7f07007c

    .line 2036
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_17

    .line 2037
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2039
    :cond_17
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2040
    .end local v1           #modeId:I
    :cond_18
    if-ne p1, v8, :cond_0

    .line 2041
    const v1, 0x7f07007c

    .line 2042
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_19

    .line 2043
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2045
    :cond_19
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2049
    .end local v1           #modeId:I
    :pswitch_3
    const v1, 0x7f07008c

    .line 2050
    .restart local v1       #modeId:I
    if-ne p1, v5, :cond_1b

    .line 2051
    const v1, 0x7f07008c

    .line 2052
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_1a

    .line 2053
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2055
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2056
    :cond_1b
    if-ne p1, v4, :cond_1d

    .line 2057
    const v1, 0x7f07007b

    .line 2058
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_1c

    .line 2059
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2061
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2062
    :cond_1d
    if-nez p1, :cond_1f

    .line 2063
    const v1, 0x7f07007f

    .line 2064
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_1e

    .line 2065
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2067
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2068
    :cond_1f
    if-ne p1, v6, :cond_21

    .line 2069
    const v1, 0x7f07007c

    .line 2070
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_20

    .line 2071
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2073
    :cond_20
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2074
    :cond_21
    if-ne p1, v7, :cond_23

    .line 2075
    const v1, 0x7f07007c

    .line 2076
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_22

    .line 2077
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2079
    :cond_22
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 2080
    :cond_23
    if-ne p1, v8, :cond_0

    .line 2081
    const v1, 0x7f07007c

    .line 2082
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_24

    .line 2083
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2085
    :cond_24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 1969
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private isHandwriting(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 2671
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeInputMethodList()I
    .locals 6

    .prologue
    .line 2334
    const-string v2, "qwertykeyboard;12phonepad;handwritingbox1;handwritingbox2;"

    .line 2335
    .local v2, list:Ljava/lang/String;
    const-string v0, ";"

    .line 2336
    .local v0, delimiter:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2338
    .local v3, st:Ljava/util/StringTokenizer;
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2340
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2341
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->parseImTypeValue(Ljava/lang/String;)I

    move-result v1

    .line 2342
    .local v1, im:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 2343
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2347
    .end local v1           #im:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    return v4
.end method


# virtual methods
.method public getBkInputMethodType()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mBkInputMethodType:I

    return v0
.end method

.method public getDefaultInputmethod()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2863
    .line 2864
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    const-string v1, "defaultInputmethod"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2871
    if-nez p0, :cond_0

    move v0, v2

    .line 2889
    :goto_0
    return v0

    .line 2875
    :cond_0
    const-string v0, "phonepad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    const/4 v0, 0x1

    goto :goto_0

    .line 2877
    :cond_1
    const-string v0, "qwerty"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2878
    const/4 v0, 0x2

    goto :goto_0

    .line 2879
    :cond_2
    const-string v0, "handwritingbox1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2880
    const/4 v0, 0x3

    goto :goto_0

    .line 2881
    :cond_3
    const-string v0, "handwritingbox2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2882
    const/4 v0, 0x4

    goto :goto_0

    .line 2883
    :cond_4
    const-string v0, "handwritingfull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2884
    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    move v0, v2

    .line 2886
    goto :goto_0
.end method

.method public getDefaultInputmode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2841
    .line 2842
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    const-string v1, "defaultInputmode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2843
    if-nez p0, :cond_0

    move v0, v2

    .line 2859
    :goto_0
    return v0

    .line 2847
    :cond_0
    const-string v0, "korean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2848
    const/4 v0, 0x1

    goto :goto_0

    .line 2849
    :cond_1
    const-string v0, "english"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2850
    const/4 v0, 0x2

    goto :goto_0

    .line 2851
    :cond_2
    const-string v0, "symbol"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2852
    const/4 v0, 0x3

    goto :goto_0

    .line 2853
    :cond_3
    const-string v0, "numeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2854
    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2856
    goto :goto_0
.end method

.method public getEditortype()I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mEditorType:I

    return v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    return-object v0
.end method

.method public getInputMethodListSize()I
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputMethodType()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    return v0
.end method

.method public getInputMode()I
    .locals 1

    .prologue
    .line 1094
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMode:I

    return v0
.end method

.method public getInputType()I
    .locals 3

    .prologue
    .line 2893
    const/4 v0, 0x0

    .line 2894
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    const-string v2, "inputType"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2895
    if-nez p0, :cond_1

    .line 2912
    :cond_0
    :goto_0
    return v0

    .line 2899
    :cond_1
    const-string v1, "ipAddress"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2900
    const/4 v0, 0x1

    goto :goto_0

    .line 2901
    :cond_2
    const-string v1, "option"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2902
    const/4 v0, 0x2

    goto :goto_0

    .line 2905
    :cond_3
    const-string v1, "mmsRecipient"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2906
    const/4 v0, 0x4

    goto :goto_0

    .line 2907
    :cond_4
    const-string v1, "month_edittext"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2908
    const/4 v0, 0x5

    goto :goto_0

    .line 2909
    :cond_5
    const-string v1, "YearDateTime_edittext"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2910
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getLatestTextInputMode()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mLatestTextInputMode:I

    return v0
.end method

.method public getMmsRecipientLastInputMode()I
    .locals 1

    .prologue
    .line 2945
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMmsRecipientLastInputMode:I

    return v0
.end method

.method public getRealInputMethodType()I
    .locals 3

    .prologue
    .line 2677
    const/4 v0, 0x2

    .line 2678
    .local v0, inputMethod:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2681
    :cond_0
    const/4 v0, 0x0

    .line 2744
    :goto_0
    return v0

    .line 2686
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2687
    const/4 v0, 0x0

    goto :goto_0

    .line 2689
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2726
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2731
    const/4 v0, 0x2

    goto :goto_0

    .line 2691
    :pswitch_0
    const/4 v0, 0x0

    .line 2692
    goto :goto_0

    .line 2700
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2708
    const/4 v0, 0x2

    goto :goto_0

    .line 2713
    :cond_3
    const/4 v0, 0x0

    .line 2722
    goto :goto_0

    .line 2737
    :cond_4
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    goto :goto_0

    .line 2689
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getpreInputMode()I
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mpreInputMode:I

    return v0
.end method

.method public initPrivateImeOptions(Ljava/lang/String;)Z
    .locals 8
    .parameter "imeOptions"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2807
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 2809
    if-nez p1, :cond_0

    move v5, v7

    .line 2837
    :goto_0
    return v5

    .line 2814
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    .local v1, st1:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2816
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2817
    .local v3, token:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, "="

    invoke-direct {v2, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    .local v2, st2:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 2819
    .local v0, key:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2820
    .local v4, value:Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 2821
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    move-object v0, v6

    .line 2818
    goto :goto_2

    .restart local v0       #key:Ljava/lang/String;
    :cond_3
    move-object v4, v6

    .line 2819
    goto :goto_3

    .line 2825
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #st2:Ljava/util/StringTokenizer;
    .end local v3           #token:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2826
    const-string v5, "AxT9IME"

    const-string v6, "setPrivateImeOptions: empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 2827
    goto :goto_0

    .line 2837
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isHandwriting()Z
    .locals 2

    .prologue
    .line 2665
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberMode()Z
    .locals 2

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolMode()Z
    .locals 2

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1081
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeKeyboards()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 272
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 273
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 274
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 275
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 276
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 281
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 282
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 283
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 284
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 285
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 286
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 289
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 290
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 291
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 292
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 293
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 294
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 295
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 301
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 302
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 303
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 304
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 305
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 306
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 312
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 313
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 314
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 316
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 317
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 318
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 319
    return-void
.end method

.method public parseImTypeValue(Ljava/lang/String;)I
    .locals 2
    .parameter "inputMethod"

    .prologue
    .line 2353
    const-string v1, "12phonepad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2354
    const/4 v0, 0x0

    .line 2369
    .local v0, im:I
    :goto_0
    return v0

    .line 2355
    .end local v0           #im:I
    :cond_0
    const-string v1, "20keypad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2356
    const/4 v0, 0x1

    .restart local v0       #im:I
    goto :goto_0

    .line 2357
    .end local v0           #im:I
    :cond_1
    const-string v1, "qwertykeyboard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2358
    const/4 v0, 0x2

    .restart local v0       #im:I
    goto :goto_0

    .line 2359
    .end local v0           #im:I
    :cond_2
    const-string v1, "handwritingbox1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2360
    const/4 v0, 0x3

    .restart local v0       #im:I
    goto :goto_0

    .line 2361
    .end local v0           #im:I
    :cond_3
    const-string v1, "handwritingbox2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2362
    const/4 v0, 0x4

    .restart local v0       #im:I
    goto :goto_0

    .line 2363
    .end local v0           #im:I
    :cond_4
    const-string v1, "handwritingfull"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2364
    const/4 v0, 0x5

    .restart local v0       #im:I
    goto :goto_0

    .line 2366
    .end local v0           #im:I
    :cond_5
    const/4 v0, -0x1

    .restart local v0       #im:I
    goto :goto_0
.end method

.method public setBkInputMethodType(I)V
    .locals 0
    .parameter "inputMethodType"

    .prologue
    .line 1077
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mBkInputMethodType:I

    .line 1078
    return-void
.end method

.method public setCurrentRequestedKeyboardNull(I)V
    .locals 7
    .parameter "inputmode"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v5, "AxT9IME"

    .line 460
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 463
    .local v0, vInputMethodType:I
    packed-switch p1, :pswitch_data_0

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 465
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    if-ne v0, v3, :cond_3

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_1

    .line 468
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 470
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 472
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 475
    :cond_3
    const-string v1, "AxT9IME"

    const-string v1, "AxT9SipMgr.getTextT9LanguageKeyboard() error"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_4
    if-ne v0, v3, :cond_7

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_5

    .line 480
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 481
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 482
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 483
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 484
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 486
    :cond_7
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_8

    .line 488
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 489
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 490
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 491
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 492
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 494
    :cond_a
    if-nez v0, :cond_d

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_b

    .line 496
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 497
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 498
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_0

    .line 499
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 500
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 502
    :cond_d
    if-ne v0, v4, :cond_e

    .line 503
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 504
    :cond_e
    if-ne v0, v6, :cond_f

    .line 505
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 506
    :cond_f
    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 507
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 509
    :cond_10
    const-string v1, "AxT9IME"

    const-string v1, "AxT9SipMgr.getTextT9LanguageKeyboard() error"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 514
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 515
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 516
    if-ne v0, v3, :cond_13

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_11

    .line 518
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 519
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_12

    .line 520
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 521
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 522
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 525
    :cond_13
    const-string v1, "AxT9IME"

    const-string v1, "AxT9SipMgr.getTextT9LanguageKeyboard() error"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    :cond_14
    if-ne v0, v3, :cond_17

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_15

    .line 530
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 531
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_16

    .line 532
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 533
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 534
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 536
    :cond_17
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_18

    .line 538
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 539
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_19

    .line 540
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 541
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 542
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 544
    :cond_1a
    if-nez v0, :cond_1d

    .line 545
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_1b

    .line 546
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 547
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_1c

    .line 548
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 549
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 550
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 552
    :cond_1d
    if-ne v0, v4, :cond_1e

    .line 553
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 554
    :cond_1e
    if-ne v0, v6, :cond_1f

    .line 555
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 556
    :cond_1f
    const/4 v1, 0x5

    if-ne v0, v1, :cond_20

    .line 557
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 559
    :cond_20
    const-string v1, "AxT9IME"

    const-string v1, "AxT9SipMgr.getTextLanguageKeyboard() error"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 564
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 565
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 566
    :cond_21
    if-ne v0, v4, :cond_22

    .line 567
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 568
    :cond_22
    if-ne v0, v6, :cond_23

    .line 569
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 570
    :cond_23
    const/4 v1, 0x5

    if-ne v0, v1, :cond_24

    .line 571
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 573
    :cond_24
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 577
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 578
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 580
    :cond_25
    if-ne v0, v3, :cond_26

    .line 581
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 582
    :cond_26
    if-nez v0, :cond_27

    .line 583
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 584
    :cond_27
    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 585
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 586
    :cond_28
    if-ne v0, v4, :cond_29

    .line 587
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 588
    :cond_29
    if-ne v0, v6, :cond_2a

    .line 589
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 590
    :cond_2a
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2b

    .line 591
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_0

    .line 593
    :cond_2b
    const-string v1, "AxT9IME"

    const-string v1, "getSymbolKeyboard.PortraitMode.InputMethod Error!"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEditorType(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 1165
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mEditorType:I

    .line 1166
    return-void
.end method

.method public setInputMethod(I)V
    .locals 0
    .parameter "inputMethod"

    .prologue
    .line 1073
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 1074
    return-void
.end method

.method public setInputMethodType(I)V
    .locals 6
    .parameter "nList"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1037
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v1

    if-eq v1, p1, :cond_5

    move v0, v4

    .line 1039
    .local v0, shouldInitSymbolPageNumber:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1041
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 1044
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1045
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 1059
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1060
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentNumberSymbolsPageNumber(I)V

    .line 1069
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 1070
    return-void

    .end local v0           #shouldInitSymbolPageNumber:Z
    :cond_5
    move v0, v3

    .line 1037
    goto :goto_0

    .line 1047
    .restart local v0       #shouldInitSymbolPageNumber:Z
    :cond_6
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in inputMethodList."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "InputMethodType has not been chagned."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 1055
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    goto :goto_1
.end method

.method public setInputMode(I)V
    .locals 1
    .parameter "nMode"

    .prologue
    .line 1101
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x7

    if-eq v0, p1, :cond_0

    const/4 v0, 0x6

    if-eq v0, p1, :cond_0

    .line 1104
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setLatestTextInputMode(I)V

    .line 1106
    :cond_0
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMode:I

    .line 1107
    return-void
.end method

.method public setInputView(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V
    .locals 0
    .parameter "keyboardView"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    .line 267
    return-void
.end method

.method public setKeyboardInputMode(I)V
    .locals 6
    .parameter "inputMode"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "AxT9IME"

    .line 333
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_0

    .line 334
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_1

    .line 337
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_2

    .line 340
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_3

    .line 343
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 345
    :cond_3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmoticonKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_4

    .line 346
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmoticonKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 348
    :cond_4
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_5

    .line 349
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 351
    :cond_5
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_6

    .line 352
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 354
    :cond_6
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_7

    .line 355
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 403
    :cond_7
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 405
    if-ltz p1, :cond_b

    const/4 v2, 0x4

    if-gt p1, v2, :cond_b

    .line 406
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    .line 413
    .local v0, editorType:I
    if-ltz v0, :cond_8

    const/4 v2, 0x3

    if-le v0, v2, :cond_9

    .line 414
    :cond_8
    const-string v2, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyboardInputMode() Unknown editorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 418
    :cond_9
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v1

    .line 420
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v1, :cond_a

    .line 421
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 422
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getMinWidth()I

    move-result v3

    if-le v2, v3, :cond_a

    .line 423
    const-string v2, "AxT9IME"

    const-string v2, "in Landscape keyboard Width error. in land"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setCurrentRequestedKeyboardNull(I)V

    .line 425
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v1

    .line 436
    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 437
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 439
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeInputMode(I)V

    .line 441
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeKDBNum(I)V

    .line 444
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setPreviewEnabled(Z)V

    .line 456
    return-void

    .line 408
    .end local v0           #editorType:I
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_b
    const-string v2, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyboardInputMode() Unknown inputmode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto/16 :goto_0

    .line 428
    .restart local v0       #editorType:I
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_c
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getMinWidth()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 429
    const-string v2, "AxT9IME"

    const-string v2, "in Portrate keyboard Width error. in port"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setCurrentRequestedKeyboardNull(I)V

    .line 431
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v1

    goto :goto_1
.end method

.method public setLatestTextInputMode(I)V
    .locals 0
    .parameter "Mode"

    .prologue
    .line 1132
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mLatestTextInputMode:I

    .line 1133
    return-void
.end method

.method public setMmsRecipientLastInputMode(I)V
    .locals 0
    .parameter "mmsRecipientLastInputMode"

    .prologue
    .line 2941
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMmsRecipientLastInputMode:I

    .line 2942
    return-void
.end method

.method public setPreInputMethodType(I)V
    .locals 0
    .parameter "preinputmethodtype"

    .prologue
    .line 1032
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mPreInputMethodType:I

    .line 1033
    return-void
.end method

.method public setpreInputMode(I)V
    .locals 0
    .parameter "Mode"

    .prologue
    .line 1121
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mpreInputMode:I

    .line 1122
    return-void
.end method
