.class public Lcom/android/mms/ui/SmsViewerActivity;
.super Landroid/app/Activity;
.source "SmsViewerActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;
    }
.end annotation


# instance fields
.field private MY_DATA_CHECK_CODE:I

.field private bLongPress:Z

.field private bMultiTouch:Z

.field private endX:I

.field private mAddContactIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mDate:J

.field private mFirstTime:Z

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mSmsBodyView:Landroid/webkit/WebView;

.field private mStopTTSOnClosing:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private messageBodyInfo:Ljava/lang/String;

.field private msgId:J

.field private receivedTimeInfo:Ljava/lang/String;

.field private senderInfo:Ljava/lang/String;

.field private startX:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 82
    iput v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->MY_DATA_CHECK_CODE:I

    .line 86
    iput-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStopTTSOnClosing:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFirstTime:Z

    .line 95
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewerActivity$1;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 282
    return-void
.end method

.method private LaunchTTS()V
    .locals 9

    .prologue
    const-string v8, "VOL"

    const-string v7, ", "

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_0

    .line 426
    const-string v1, "VOL"

    const-string v1, "vol up, mTts NULL"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->MY_DATA_CHECK_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 442
    .end local v0           #checkIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 434
    const-string v1, "VOL"

    const-string v1, "vol up, mTts stop"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->senderInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 439
    const-string v1, "VOL"

    const-string v1, "vol up, mTts speak"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createTtsInstallDialog()V
    .locals 5

    .prologue
    .line 301
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Lcom/android/mms/ui/SmsViewerActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 303
    .local v0, installTts:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 305
    .local v1, installTtsDialog:Landroid/app/AlertDialog;
    const v2, 0x7f0901b0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 306
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SmsViewerActivity$2;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 314
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090148

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SmsViewerActivity$3;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 320
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 321
    return-void
.end method

.method private drawMainTextView()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const-string v12, "\n"

    .line 352
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v5, v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, date:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 357
    .local v7, msgBody_spannable:Landroid/text/SpannableStringBuilder;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 361
    const/16 v0, 0xf

    invoke-static {v7, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 364
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    const-string v0, "\n"

    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 368
    const-string v0, "\n"

    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 371
    .local v8, startOffset:I
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v3}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v7, v0, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 378
    .end local v8           #startOffset:I
    :cond_1
    invoke-static {v7}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "<p>"

    const-string v4, "<html><body text=white link=\"#00AEEF\"><div style=\"word-wrap:break-word; FONT-SIZE:24px; line-height:1.3em\"><p>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, mHtmlText:Ljava/lang/String;
    const-string v0, "\n<div align=\"right\"  ><p>"

    const-string v3, "</div>\n<div align=\"right\"><p style=\"FONT-SIZE:21px\">"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    const-string v0, "</body></html>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 386
    return-void
.end method

.method private drawTitle()V
    .locals 6

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v5, "sms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 393
    return-void
.end method

.method private flickMessage(II)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 495
    .line 497
    const/4 v6, 0x0

    .line 498
    const/4 v7, 0x0

    .line 505
    sub-int v0, p1, p2

    .line 507
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x96

    if-le v1, v2, :cond_2

    .line 508
    if-gez v0, :cond_1

    .line 509
    const/4 v0, 0x1

    move v8, v0

    .line 518
    :goto_0
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 520
    if-nez v1, :cond_3

    .line 622
    :cond_0
    :goto_1
    return-void

    .line 511
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 514
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    goto :goto_1

    .line 523
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 531
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 532
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 533
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 537
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v7

    .line 538
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_6

    if-ge v2, v1, :cond_6

    .line 540
    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v3, v3, v9

    if-nez v3, :cond_7

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 551
    :cond_6
    :goto_3
    if-eqz v8, :cond_9

    .line 552
    if-nez v2, :cond_8

    .line 553
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 554
    const/4 v2, 0x1

    sub-int v2, v1, v2

    .line 559
    :goto_4
    const v3, 0x7f040002

    .line 560
    const v4, 0x7f040003

    move v12, v4

    move v4, v2

    move v2, v12

    .line 573
    :goto_5
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 574
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move v7, v4

    move-object v12, v5

    move-wide v4, v9

    move v9, v6

    move-object v6, v12

    .line 576
    :goto_6
    const-string v10, "mms"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 577
    const/16 v10, 0x10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v11, 0x82

    if-ne v10, v11, :cond_e

    .line 578
    if-eqz v8, :cond_c

    .line 579
    if-nez v7, :cond_b

    .line 580
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 581
    const/4 v4, 0x1

    sub-int v4, v1, v4

    .line 595
    :goto_7
    add-int/lit8 v5, v9, 0x1

    .line 596
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 597
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move v7, v4

    move-wide v12, v9

    move v9, v5

    move-wide v4, v12

    goto :goto_6

    .line 543
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 556
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 557
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 562
    :cond_9
    const/4 v3, 0x1

    sub-int v3, v1, v3

    if-ne v2, v3, :cond_a

    .line 563
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 564
    const/4 v2, 0x0

    .line 569
    :goto_8
    const/high16 v3, 0x7f04

    .line 570
    const v4, 0x7f040001

    move v12, v4

    move v4, v2

    move v2, v12

    goto :goto_5

    .line 566
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 567
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 583
    :cond_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 584
    add-int/lit8 v4, v7, -0x1

    goto :goto_7

    .line 587
    :cond_c
    const/4 v4, 0x1

    sub-int v4, v1, v4

    if-ne v7, v4, :cond_d

    .line 588
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 589
    const/4 v4, 0x0

    goto :goto_7

    .line 591
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 592
    add-int/lit8 v4, v7, 0x1

    goto :goto_7

    .line 602
    :cond_e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v0, 0x1

    sub-int v0, v1, v0

    if-eq v9, v0, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 608
    const-string v1, "sms"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    const-string v1, "msgId"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 611
    const-string v1, "thread_id"

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 618
    :cond_f
    :goto_9
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead()V

    .line 619
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 621
    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 612
    :cond_10
    const-string v1, "mms"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 613
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    const-string v1, "msgId"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 615
    const-string v1, "thread_id"

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_9

    :cond_11
    move v2, v7

    goto/16 :goto_3
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 9
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 647
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 650
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 678
    if-eqz v3, :cond_0

    .line 680
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v1, v2

    .line 683
    :goto_0
    return-object v1

    .line 653
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 654
    const/4 v1, 0x4

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    .line 657
    new-instance v8, Lcom/android/mms/ui/SmsViewerActivity$5;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v8, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$5;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    .line 663
    .local v8, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 664
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v7, item:Lcom/android/mms/ui/MessageItem;
    if-nez v7, :cond_4

    .line 669
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 671
    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 678
    :goto_1
    if-eqz v3, :cond_2

    .line 680
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :cond_2
    :goto_2
    move-object v1, v0

    .line 683
    goto :goto_0

    .line 675
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 676
    .local v6, e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_3
    const/4 v0, 0x0

    .line 678
    if-eqz v3, :cond_2

    .line 680
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 678
    .end local v6           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v3, :cond_3

    .line 680
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 678
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_4

    .line 675
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 673
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :catch_2
    move-exception v1

    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 336
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->requestWindowFeature(I)Z

    .line 337
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->setContentView(I)V

    .line 339
    const v1, 0x7f080095

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 340
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 346
    :goto_0
    const v1, 0x7f0800ad

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    .line 347
    return-void

    .line 343
    :cond_0
    const v1, 0x7f0800b7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const-string v6, "sms"

    .line 324
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 325
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    .line 326
    const-string v0, "thread_id"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    .line 327
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    .line 329
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 330
    .local v8, messageUri:Landroid/net/Uri;
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v2, "sms"

    invoke-direct {p0, v8, v0, v1, v6}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 332
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v2, "sms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 333
    return-void
.end method

.method private markAsRead()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 630
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 633
    .local v0, msgUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 634
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    const-string v2, "seen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewerActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewerActivity$4;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 207
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 225
    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 226
    iput-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 233
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 209
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v2, :cond_0

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v2, v4

    .line 215
    goto :goto_1

    .line 212
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 213
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 220
    .end local v1           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    .line 221
    iget v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    iget v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/SmsViewerActivity;->flickMessage(II)V

    goto :goto_0

    .line 228
    :cond_1
    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 237
    iget v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->MY_DATA_CHECK_CODE:I

    if-ne p1, v2, :cond_2

    .line 238
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 240
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v2, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->createTtsInstallDialog()V

    goto :goto_0

    .line 247
    :cond_2
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 257
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_3
    if-eqz v0, :cond_0

    .line 261
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 262
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const-string v3, " "

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    iput-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStopTTSOnClosing:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, ttsObject:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 113
    check-cast v0, Landroid/speech/tts/TextToSpeech;

    .end local v0           #ttsObject:Ljava/lang/Object;
    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 115
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->requestWindowFeature(I)Z

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901b4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->senderInfo:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901b5

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->receivedTimeInfo:Ljava/lang/String;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901b6

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->messageBodyInfo:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initialize()V

    .line 122
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initResourceRefs()V

    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStopTTSOnClosing:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 201
    :cond_1
    return-void
.end method

.method public onInit(I)V
    .locals 7
    .parameter "status"

    .prologue
    const-string v6, ", "

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->senderInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 278
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const-string v1, "VOL"

    .line 398
    packed-switch p1, :pswitch_data_0

    .line 419
    const-string v0, "VOL"

    const-string v0, "vol up, SUPER!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 403
    :pswitch_0
    const-string v0, "VOL"

    const-string v0, "vol up,"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    .line 407
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->LaunchTTS()V

    .line 408
    const-string v0, "VOL"

    const-string v0, "vol up, LaunchTTS()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 414
    const-string v0, "VOL"

    const-string v0, "vol up, startTracking"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 416
    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 447
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    if-eqz v1, :cond_0

    .line 451
    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    move v1, v4

    .line 468
    :goto_0
    return v1

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 456
    .local v0, am:Landroid/media/AudioManager;
    const/16 v1, 0x15

    invoke-virtual {v0, v4, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 461
    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->bLongPress:Z

    .line 464
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 465
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead()V

    .line 468
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 159
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, messageUri:Landroid/net/Uri;
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFirstTime:Z

    if-eqz v0, :cond_1

    .line 135
    iput-boolean v8, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFirstTime:Z

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v7, 0x0

    .line 138
    .local v7, needFinish:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 140
    const/4 v7, 0x1

    .line 147
    :goto_1
    if-eqz v7, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 143
    const/4 v7, 0x1

    .line 145
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStopTTSOnClosing:Z

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStopTTSOnClosing:Z

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 165
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    .line 166
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 177
    :cond_0
    return-void
.end method
