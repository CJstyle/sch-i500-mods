.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/RelativeLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;

.field public static gListview:Lcom/android/mms/ui/MessageListView;


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field private isSimMsg:Z

.field private mBodyTextView:Landroid/widget/TextView;

.field mCheckBox:Landroid/widget/CheckBox;

.field private mCursor:Landroid/database/Cursor;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mDownloding:Z

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsView:Landroid/view/View;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private mMsgListItemLayoutLayout:Landroid/widget/RelativeLayout;

.field private mPriorityIndicator:Landroid/widget/ImageView;

.field private mRightAttachmentIndicator:Landroid/widget/ImageView;

.field private mRightLockIndicator:Landroid/widget/ImageView;

.field private mRightStatusIndicator:Landroid/widget/ImageView;

.field private mScale:F

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mTextViewPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 153
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 164
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mScale:F

    .line 165
    iget v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    iget v1, p0, Lcom/android/mms/ui/MessageListItem;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextViewPadding:I

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 314
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v19

    .line 329
    .local v19, formattedMessage:Ljava/lang/CharSequence;
    if-nez v19, :cond_1

    .line 331
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    move-object v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    move v4, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    move v4, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v17}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 336
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 339
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I

    move-result v4

    const/16 v5, 0x82

    if-ne v4, v5, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    move-object v4, v0

    const v5, 0x7f02009a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;

    move v4, v0

    if-eqz v4, :cond_3

    .line 348
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteThreadActivity;

    move-object/from16 v18, v0

    .line 350
    .local v18, delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object v4, v0

    if-nez v4, :cond_2

    .line 351
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 355
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    .line 356
    .local v20, i:I
    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(Landroid/view/View;I)V

    .line 359
    .end local v18           #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    .end local v20           #i:I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 360
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 380
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move v4, v0

    if-nez v4, :cond_4

    .line 381
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;Landroid/database/Cursor;)V

    .line 385
    :cond_4
    return-void

    .line 343
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 362
    :cond_6
    const-string v4, "MmsThumbnailPresenter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v6, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v21

    .line 365
    .local v21, presenter:Lcom/android/mms/ui/Presenter;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->present(Z)V

    .line 367
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    move v4, v0

    if-eqz v4, :cond_8

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/android/mms/ui/DeleteThreadActivity;

    if-nez v4, :cond_7

    .line 371
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Lcom/android/mms/ui/MessageItem;)V

    .line 373
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1

    .line 375
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 244
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 245
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0900cc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move v4, v0

    add-int/lit16 v4, v4, 0x3ff

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f09001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 252
    .local v19, msgSizeText:Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;

    move v3, v0

    if-eqz v3, :cond_1

    .line 253
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteThreadActivity;

    move-object/from16 v17, v0

    .line 254
    .local v17, delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 255
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 259
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    .line 260
    .local v18, i:I
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(Landroid/view/View;I)V

    .line 263
    .end local v17           #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    .end local v18           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object v6, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide v11, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    move v3, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    move v3, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v20

    .line 272
    .local v20, state:I
    packed-switch v20, :pswitch_data_0

    .line 282
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    move-object v3, v0

    new-instance v4, Lcom/android/mms/ui/MessageListItem$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mRightLockIndicator:Landroid/widget/ImageView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mRightAttachmentIndicator:Landroid/widget/ImageView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move v3, v0

    if-nez v3, :cond_2

    .line 308
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 310
    :cond_2
    return-void

    .line 274
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f020062

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 1014
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayoutLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1018
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1019
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    packed-switch v1, :pswitch_data_0

    .line 1062
    :goto_0
    :pswitch_0
    return-void

    .line 1022
    :pswitch_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x816

    if-lt v1, v2, :cond_2

    .line 1029
    :goto_1
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-eq v0, v4, :cond_1

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v0, v4, :cond_3

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1025
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1026
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1034
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1039
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1040
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1049
    :pswitch_3
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1050
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1052
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1054
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1019
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 750
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 793
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 796
    :goto_0
    return-void

    .line 756
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 772
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 777
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 779
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 786
    new-instance v0, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f020095

    const/4 v1, 0x0

    .line 1211
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDeliveredMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1242
    :goto_0
    return-void

    .line 1215
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->hasMmsDeliveryReport(Lcom/android/mms/ui/MessageItem;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1217
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I
    .locals 3
    .parameter "context"
    .parameter "msgItem"

    .prologue
    const/16 v2, 0x80

    .line 389
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget v0, p2, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 391
    const/16 v0, 0x82

    .line 398
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 393
    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget v0, p2, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 398
    goto :goto_0
.end method

.method private hasMmsDeliveryReport(Lcom/android/mms/ui/MessageItem;Landroid/database/Cursor;)Z
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 1092
    const/4 v9, 0x0

    .line 1094
    const/4 v10, 0x0

    .line 1095
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v2, v0

    .line 1098
    const/4 v11, 0x0

    .line 1099
    const/4 v12, 0x1

    .line 1100
    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "d_rpt"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "rr"

    aput-object v3, v5, v2

    .line 1105
    const/4 v2, 0x5

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const-string v3, "delivery_status"

    aput-object v3, v13, v2

    const/4 v2, 0x2

    const-string v3, "delivery_date"

    aput-object v3, v13, v2

    const/4 v2, 0x3

    const-string v3, "read_status"

    aput-object v3, v13, v2

    const/4 v2, 0x4

    const-string v3, "read_date"

    aput-object v3, v13, v2

    .line 1112
    if-eqz p2, :cond_0

    .line 1113
    const/16 v2, 0x11

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1114
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1115
    const/4 v2, 0x0

    .line 1196
    :goto_0
    return v2

    .line 1117
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1122
    if-eqz v14, :cond_1

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_2

    .line 1123
    :cond_1
    const/4 v2, 0x0

    .line 1149
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1150
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1125
    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 1126
    sget-object v2, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v13

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 1129
    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-gtz v3, :cond_6

    .line 1130
    :cond_3
    const/4 v3, 0x0

    .line 1149
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1150
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v3

    goto :goto_0

    .line 1132
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1133
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    .line 1134
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 1137
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 1138
    goto :goto_1

    .line 1143
    :cond_4
    if-eqz v15, :cond_5

    if-ne v15, v3, :cond_5

    .line 1144
    const/4 v3, 0x1

    .line 1149
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1150
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v3

    .line 1151
    goto/16 :goto_0

    .line 1146
    :catch_0
    move-exception v2

    move-object v3, v10

    .line 1147
    :goto_3
    :try_start_4
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in retrieving MMS Delivery report:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1149
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1150
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v2, v9

    .line 1151
    goto/16 :goto_0

    .line 1149
    :catchall_0
    move-exception v2

    move-object v3, v10

    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1150
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1149
    :catchall_1
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_4

    :catchall_2
    move-exception v2

    goto :goto_4

    .line 1146
    :catch_1
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_3

    :cond_5
    move v3, v9

    goto :goto_2

    :cond_6
    move v3, v11

    goto :goto_1

    .line 1134
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x86 -> :sswitch_0
    .end sparse-switch
.end method

.method private hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 415
    :goto_0
    return-void

    .line 409
    :cond_1
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private hideSipExplict()V
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_0

    .line 1399
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    .line 1400
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1401
    if-eqz v1, :cond_0

    .line 1402
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1403
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setIsHideExplict(Z)V

    .line 1406
    :cond_0
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 459
    :cond_0
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 461
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    .line 464
    return-void
.end method

.method private inflateMmsView()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 446
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 449
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 450
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 452
    :cond_0
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1410
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1413
    if-eqz p0, :cond_1

    .line 1415
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1417
    if-eqz v0, :cond_1

    move v1, v4

    .line 1419
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1421
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 1422
    const/4 v0, 0x1

    .line 1427
    :goto_1
    return v0

    .line 1419
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 1427
    goto :goto_1
.end method

.method private setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x1

    .line 981
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1006
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    :goto_0
    return-void

    .line 984
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 986
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startViewer()V
    .locals 11

    .prologue
    const/16 v8, 0x82

    const-string v10, "thread_id"

    const-string v9, "msgId"

    .line 1340
    .line 1341
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    .line 1342
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    .line 1343
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1344
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1346
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    .line 1348
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1349
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1350
    const-string v5, "msgId"

    invoke-virtual {v4, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1351
    const-string v0, "thread_id"

    invoke-virtual {v4, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1377
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v8, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 1380
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1387
    :cond_1
    :goto_1
    return-void

    .line 1356
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v6, v8, :cond_0

    .line 1357
    if-eqz v5, :cond_3

    .line 1358
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 1360
    :try_start_0
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    .line 1361
    invoke-virtual {v6, v4, v7}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1362
    invoke-virtual {v5, v7}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :cond_3
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1370
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1371
    const-string v4, "msgId"

    invoke-virtual {v5, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1372
    const-string v0, "thread_id"

    invoke-virtual {v5, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1373
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    const-string v0, "Mms/MessageListItem"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const-string v2, "Mms/MessageListItem"

    .line 190
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 193
    const-string v0, "Mms/MessageListItem"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind uri 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v1, -0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 201
    :cond_0
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v0, :pswitch_data_0

    .line 210
    const-string v0, "Mms/MessageListItem"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind uri 3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 215
    :goto_0
    return-void

    .line 203
    :pswitch_0
    const-string v0, "Mms/MessageListItem"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind uri 2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"
    .parameter "isSimMessage"

    .prologue
    .line 218
    iput-boolean p4, p0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    .line 219
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 220
    return-void
.end method

.method protected formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;
    .locals 30
    .parameter "contact"
    .parameter "body"
    .parameter "subject"
    .parameter "timestamp"
    .parameter "highlight"
    .parameter "boxId"
    .parameter "type"
    .parameter "msgId"
    .parameter "address"
    .parameter "hasAttachment"
    .parameter "locked"
    .parameter "bFailed"

    .prologue
    .line 470
    const/4 v12, 0x0

    .line 471
    .local v12, endname:I
    const/4 v10, 0x0

    .line 472
    .local v10, endBody:I
    const/16 v22, 0x0

    .line 473
    .local v22, startTimestamp:I
    const-string v5, "arrow"

    .line 474
    .local v5, arrow:Ljava/lang/String;
    const-string v6, "attach"

    .line 475
    .local v6, attach:Ljava/lang/String;
    const-string v16, "locked"

    .line 478
    .local v16, lock:Ljava/lang/String;
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 479
    .local v20, smileyStart:[I
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 481
    .local v19, smileyEnd:[I
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 482
    .local v7, buf:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 485
    const/16 v25, 0x1

    move-object/from16 v0, p10

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    .line 493
    .local v9, displayAddress:Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 494
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 495
    const-string v25, "\n"

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 497
    packed-switch p6, :pswitch_data_0

    .line 513
    :pswitch_0
    new-instance v25, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f02007b

    invoke-direct/range {v25 .. v27}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/16 v26, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 519
    :goto_0
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 522
    .end local v9           #displayAddress:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v18

    .line 523
    .local v18, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    const/16 v25, 0x1

    move/from16 v13, v25

    .line 524
    .local v13, hasSubject:Z
    :goto_1
    if-eqz v13, :cond_1

    .line 525
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f090027

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object p3, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ">"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 526
    .local v24, subjectString:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 529
    .end local v24           #subjectString:Ljava/lang/String;
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 530
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 531
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 532
    if-eqz v13, :cond_2

    .line 533
    const-string v25, " - "

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 538
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v25

    if-nez v25, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_f

    .line 540
    const/16 v25, 0x0

    const/16 v26, 0xa0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 541
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 544
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v20

    .line 545
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v19

    .line 547
    const-string v25, "\n"

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 548
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0901bb

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 549
    .local v23, strMore:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v21

    .line 550
    .local v21, startMore:I
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v25

    add-int v11, v21, v25

    .line 552
    .local v11, endMore:I
    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 555
    .local v8, color:I
    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v25

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v21

    move v3, v11

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 560
    new-instance v25, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v26, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct/range {v25 .. v26}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v26, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v21

    move v3, v11

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 575
    .end local v8           #color:I
    .end local v11           #endMore:I
    .end local v21           #startMore:I
    .end local v23           #strMore:Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;

    move/from16 v25, v0

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    move/from16 v0, p6

    move/from16 v1, v25

    if-gt v0, v1, :cond_5

    .line 577
    :cond_4
    const-string v25, "\n"

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 581
    :cond_5
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 582
    const-string p4, " "

    .line 583
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 584
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0901b2

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 592
    :cond_6
    :goto_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 595
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    move/from16 v0, p6

    move/from16 v1, v25

    if-gt v0, v1, :cond_b

    .line 597
    :cond_7
    const-string v25, "\n"

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 598
    new-instance v25, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v26, 0x5

    invoke-direct/range {v25 .. v26}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v26

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move v2, v10

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 601
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v22

    .line 602
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    .line 603
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 604
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 606
    :cond_8
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 607
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 611
    :cond_9
    move-object v0, v7

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 613
    new-instance v25, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v26, 0xe

    const/16 v27, 0x1

    invoke-direct/range {v25 .. v27}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v26

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 615
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 616
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 617
    new-instance v25, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f020074

    invoke-direct/range {v25 .. v27}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v22

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 620
    new-instance v25, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f020075

    invoke-direct/range {v25 .. v27}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v22

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v27

    add-int v27, v27, v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    add-int v27, v27, v28

    const/16 v28, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 638
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/high16 v26, 0x7f07

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 639
    .restart local v8       #color:I
    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v25

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v26

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 644
    new-instance v25, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v26, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct/range {v25 .. v26}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v26

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 653
    .end local v8           #color:I
    :cond_b
    if-eqz p5, :cond_18

    .line 654
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 655
    .local v17, m:Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    .line 656
    .local v15, isSmileyhighlight:Z
    :cond_c
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_18

    .line 657
    const/4 v15, 0x0

    .line 659
    const/4 v14, 0x0

    .local v14, i:I
    :goto_6
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    move v0, v14

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 660
    aget v25, v20, v14

    if-nez v25, :cond_14

    aget v25, v19, v14

    if-nez v25, :cond_14

    .line 668
    :cond_d
    if-nez v15, :cond_c

    .line 669
    new-instance v25, Landroid/text/style/StyleSpan;

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->start()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->end()I

    move-result v27

    const/16 v28, 0x0

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 500
    .end local v13           #hasSubject:Z
    .end local v14           #i:I
    .end local v15           #isSmileyhighlight:Z
    .end local v17           #m:Ljava/util/regex/Matcher;
    .end local v18           #parser:Lcom/android/mms/util/SmileyParser;
    .restart local v9       #displayAddress:Ljava/lang/String;
    .restart local p1
    :pswitch_1
    new-instance v25, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f02008c

    invoke-direct/range {v25 .. v27}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/16 v26, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 508
    :pswitch_2
    new-instance v25, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f02007b

    invoke-direct/range {v25 .. v27}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/16 v26, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 523
    .end local v9           #displayAddress:Ljava/lang/String;
    .restart local v18       #parser:Lcom/android/mms/util/SmileyParser;
    :cond_e
    const/16 v25, 0x0

    move/from16 v13, v25

    goto/16 :goto_1

    .line 566
    .restart local v13       #hasSubject:Z
    :cond_f
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 568
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v20

    .line 569
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v19

    goto/16 :goto_2

    .line 585
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageListItem;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 586
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0900e5

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_3

    .line 589
    .restart local p1
    :cond_11
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const/16 v29, 0x1

    invoke-static/range {v26 .. v29}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_3

    .line 624
    .end local p1
    :cond_12
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 625
    new-instance v25, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f020074

    invoke-direct/range {v25 .. v27}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v22

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 629
    :cond_13
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 630
    new-instance v25, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f020075

    invoke-direct/range {v25 .. v27}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v22

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 664
    .restart local v14       #i:I
    .restart local v15       #isSmileyhighlight:Z
    .restart local v17       #m:Ljava/util/regex/Matcher;
    :cond_14
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->start()I

    move-result v25

    aget v26, v20, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_15

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->start()I

    move-result v25

    aget v26, v19, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_16

    :cond_15
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->end()I

    move-result v25

    aget v26, v20, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->end()I

    move-result v25

    aget v26, v19, v14

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_17

    .line 666
    :cond_16
    const/4 v15, 0x1

    .line 659
    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 673
    .end local v14           #i:I
    .end local v15           #isSmileyhighlight:Z
    .end local v17           #m:Ljava/util/regex/Matcher;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 675
    new-instance v25, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x207000f

    invoke-direct/range {v25 .. v27}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v26, 0x0

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v12

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 681
    new-instance v25, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x207000e

    invoke-direct/range {v25 .. v27}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v26, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move v2, v12

    move v3, v10

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 683
    new-instance v25, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v26, 0xe

    const/16 v27, 0x1

    invoke-direct/range {v25 .. v27}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v26, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move v2, v12

    move v3, v10

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 687
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListItem;->isSimMsg:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    const/16 v25, 0x1

    move/from16 v0, p6

    move/from16 v1, v25

    if-gt v0, v1, :cond_1a

    .line 688
    :cond_19
    new-instance v25, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v26, 0x5

    invoke-direct/range {v25 .. v26}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v26, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move v2, v10

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 690
    new-instance v25, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x2070011

    invoke-direct/range {v25 .. v27}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v26

    const/16 v27, 0x21

    move-object v0, v7

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 694
    :cond_1a
    return-object v7

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 939
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v4, :cond_2

    .line 940
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/DeleteThreadActivity;

    .line 942
    .local v1, delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_0

    .line 943
    iget-object v5, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 947
    :cond_0
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_2

    .line 948
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 950
    .local v3, nTotalItem:I
    const/4 v0, 0x1

    .line 951
    .local v0, allChecked:Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v3, :cond_1

    .line 952
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/MessageListAdapter;->isChecked(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 953
    const/4 v0, 0x0

    .line 958
    :cond_1
    if-eqz v0, :cond_5

    .line 959
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    :goto_1
    iput-boolean v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->isManualCheck:Z

    .line 960
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 961
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 970
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v4, :cond_2

    .line 971
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_7

    .line 972
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 978
    .end local v0           #allChecked:Z
    .end local v1           #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    .end local v2           #i:I
    .end local v3           #nTotalItem:I
    :cond_2
    :goto_3
    return-void

    .line 951
    .restart local v0       #allChecked:Z
    .restart local v1       #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    .restart local v2       #i:I
    .restart local v3       #nTotalItem:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v4, v7

    .line 959
    goto :goto_1

    .line 963
    :cond_5
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v6

    :goto_4
    iput-boolean v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->isManualCheck:Z

    .line 964
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 965
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v6, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_6
    move v4, v7

    .line 963
    goto :goto_4

    .line 974
    :cond_7
    iget-object v4, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 801
    .local v0, mi:Lcom/android/mms/ui/MessageItem;
    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v1, :pswitch_data_0

    .line 810
    :goto_0
    return-void

    .line 806
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 176
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    .line 178
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    .line 179
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayoutLayout:Landroid/widget/RelativeLayout;

    .line 180
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    .line 182
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightLockIndicator:Landroid/widget/ImageView;

    .line 183
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightAttachmentIndicator:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    .line 185
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 919
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 1300
    return-void
.end method

.method public pauseMovie()V
    .locals 0

    .prologue
    .line 1326
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 1305
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1291
    :cond_0
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1310
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1315
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setCheckBox(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 925
    const v1, 0x7f080038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 927
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 928
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 929
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v1, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/DeleteThreadActivity;

    .line 931
    .local v0, delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 933
    .end local v0           #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 934
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 432
    if-nez p2, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020090

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 439
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 1246
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1250
    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .parameter "pListview"

    .prologue
    .line 169
    sput-object p1, Lcom/android/mms/ui/MessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    .line 170
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 1321
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method public setPageNumber(II)V
    .locals 0
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 1393
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    .line 1254
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1258
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1261
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1263
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1264
    if-nez v0, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020091

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1269
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1277
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public startMovie()V
    .locals 0

    .prologue
    .line 1331
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 1281
    return-void
.end method

.method public stopMovie()V
    .locals 0

    .prologue
    .line 1336
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 1285
    return-void
.end method
