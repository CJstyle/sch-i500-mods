.class public Lcom/android/mms/ui/ComposeMessageActivity;
.super Landroid/app/Activity;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageActivity$ErrorReasonDisplayer;,
        Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;,
        Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;,
        Lcom/android/mms/ui/ComposeMessageActivity$AttachCancelListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;,
        Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final defaultThreadPriority:I

.field private static isHideExplict:Z

.field public static isSipVisible:Z

.field public static mEncodingType:I

.field private static mStarted:Z


# instance fields
.field private displayDensity:F

.field private isAlreadyShown:Z

.field private isResizingImage:Z

.field private isSmsto:Z

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

.field private mAttachListPanel:Landroid/widget/LinearLayout;

.field private mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

.field private final mAttachmentEditorHandler:Landroid/os/Handler;

.field private mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

.field private mBottomPanel:Landroid/view/View;

.field private mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

.field private mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mExitOnSent:Z

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCMAS:Z

.field private mIsContaminatedMsg:Z

.field private mIsForwardedMessage:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mLastRecipientCount:I

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMmsRemainChar:I

.field private mMsgCount:I

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mNeedUpdate:Z

.field private mPossiblePendingNotification:Z

.field private mRawAttachmentHandler:Landroid/os/Handler;

.field private mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

.field private final mRecipientButtonHandler:Landroid/os/Handler;

.field private mRecipientsCounter:Landroid/widget/TextView;

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field private final mRecipientsEditorListener:Landroid/view/View$OnKeyListener;

.field private mRecipientsField:Landroid/widget/LinearLayout;

.field private final mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mRecipientsToField:Landroid/widget/RelativeLayout;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mRemainingInCurrentMessage:I

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSendButton:Landroid/widget/Button;

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTextCounter:Landroid/widget/TextView;

.field private mTextEditor:Landroid/widget/EditText;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mToastForDraftSave:Z

.field private mTopPanel:Landroid/view/View;

.field private mWaitingForSubActivity:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private reqReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 357
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    .line 371
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mStarted:Z

    .line 372
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->defaultThreadPriority:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 359
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAlreadyShown:Z

    .line 361
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    .line 364
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRawAttachmentHandler:Landroid/os/Handler;

    .line 390
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    .line 392
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsContaminatedMsg:Z

    .line 437
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButtonHandler:Landroid/os/Handler;

    .line 480
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    .line 543
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$3;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$4;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 995
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$5;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1127
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$6;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1381
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$7;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2310
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 2312
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$9;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 2371
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$10;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditorListener:Landroid/view/View$OnKeyListener;

    .line 3405
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$21;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 4530
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$28;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 5231
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$30;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 5321
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$31;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 6444
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$36;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$36;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 6772
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$40;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$40;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->focusChangeRecipients()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isTextEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isBottomPanelVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showRecentPhonebook()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initializeContactInfo()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/text/Editable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateRecipientsCounts(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCMAS:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/SlideshowModel;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getAttachmentCount(Lcom/android/mms/model/SlideshowModel;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->showDeliveryReport(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AddRecipientButtonEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setSendButtonText(Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AddTextSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->addtext(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->chooseContact(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/net/Uri;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 188
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return-void
.end method

.method static synthetic access$7200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-static {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAlreadyShown:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAlreadyShown:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 188
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;IIII)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showToast()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->noItemSelectedDialog()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessageActivity;JLcom/android/mms/model/AttachmentModel;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRawAttachmentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ComposeMessageActivity;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->isUnderLength(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updatePresence(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageContactHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resetRecipients(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method private addAttachment(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3781
    if-eqz p2, :cond_0

    .line 3789
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 3790
    packed-switch p1, :pswitch_data_0

    .line 3947
    :goto_0
    return-void

    .line 3795
    :pswitch_0
    const-string v0, "image/*"

    .line 3796
    if-eqz p2, :cond_1

    .line 3797
    const/16 v1, 0x29

    .line 3802
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 3799
    :cond_1
    const/16 v1, 0xa

    goto :goto_1

    .line 3806
    :pswitch_1
    if-eqz p2, :cond_2

    .line 3807
    const/16 v0, 0x2a

    .line 3811
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3812
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3814
    const-string v2, "return-uri"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3815
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3809
    :cond_2
    const/16 v0, 0xb

    goto :goto_2

    .line 3823
    :pswitch_2
    const-string v0, "video/*"

    .line 3824
    if-eqz p2, :cond_3

    .line 3825
    const/16 v1, 0x2b

    .line 3830
    :goto_3
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 3827
    :cond_3
    const/16 v1, 0xc

    goto :goto_3

    .line 3835
    :pswitch_3
    if-eqz p2, :cond_5

    .line 3836
    const/16 v0, 0x2c

    .line 3840
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 3841
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3843
    if-nez p2, :cond_4

    .line 3844
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 3847
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_6

    .line 3848
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoCaptureDurationLimit()I

    move-result v3

    .line 3849
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3850
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3851
    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3852
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3855
    const-string v1, "mms"

    invoke-virtual {v4, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3856
    invoke-virtual {p0, v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3838
    :cond_5
    const/16 v0, 0xd

    goto :goto_4

    .line 3859
    :cond_6
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3869
    :pswitch_4
    const-string v0, "/sdcard/Sounds"

    .line 3870
    const-string v1, "audio/*"

    .line 3871
    if-eqz p2, :cond_7

    .line 3872
    const/16 v2, 0x2d

    .line 3876
    :goto_5
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3874
    :cond_7
    const/16 v2, 0xe

    goto :goto_5

    .line 3881
    :pswitch_5
    if-eqz p2, :cond_8

    .line 3882
    const/16 v0, 0x2e

    .line 3886
    :goto_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;Z)V

    goto/16 :goto_0

    .line 3884
    :cond_8
    const/16 v0, 0xf

    goto :goto_6

    .line 3891
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 3892
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    goto/16 :goto_0

    .line 3790
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private addAttachment(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5070
    if-eqz p2, :cond_0

    .line 5072
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 5073
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5074
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5102
    :cond_0
    :goto_0
    return-void

    .line 5077
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5079
    invoke-direct {p0, p2, p3, v4, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 5080
    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5082
    invoke-direct {p0, p2, p3, v4, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 5083
    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5084
    invoke-direct {p0, p2, p3, v4, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 5096
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5097
    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5098
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private addAudio(Landroid/net/Uri;ZZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4792
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v1

    .line 4793
    const v2, 0x7f090107

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 4794
    return-void
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x28

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "%s"

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1266
    iget v1, p3, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v1, v7, :cond_0

    .line 1267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_0
    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1272
    const/16 v0, 0xf

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1273
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v5, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1276
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1277
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1279
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1280
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1283
    :cond_2
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1285
    if-ltz v2, :cond_8

    .line 1286
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1287
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 1290
    :goto_2
    const-string v3, "mailto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1291
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%s"

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1306
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    invoke-static {v4, v2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1307
    const v3, 0x7f090023

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v9, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1311
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->haveEmailContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    .line 1333
    :goto_3
    if-eqz v0, :cond_1

    .line 1334
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1335
    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1337
    const/16 v3, 0x1b

    invoke-interface {p1, v5, v3, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    move v0, v5

    .line 1311
    goto :goto_3

    .line 1312
    :cond_4
    const-string v3, "tel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1313
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%s"

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1326
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    invoke-static {v4, v2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1327
    const v3, 0x7f090023

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v9, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1331
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_3

    .line 1342
    :cond_6
    return-void

    :cond_7
    move v0, v5

    goto :goto_3

    :cond_8
    move-object v2, v0

    move-object v0, v8

    goto/16 :goto_2
.end method

.method private addImage(Landroid/net/Uri;ZZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const-string v7, "Mms:app"

    .line 4765
    const-string v0, "Mms:app"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4768
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v1

    .line 4770
    const/4 v0, -0x4

    if-eq v1, v0, :cond_1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4773
    :cond_1
    const-string v0, "Mms:app"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: resize image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4776
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    .line 4778
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    .line 4782
    :goto_0
    return-void

    .line 4781
    :cond_3
    const v2, 0x7f090108

    const/16 v4, 0xa

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1186
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1193
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V

    .line 1194
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    const-string v0, "Mms/compose"

    const-string v1, "bad menuInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addRawMedia(Landroid/net/Uri;ZZI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f09019a

    const/4 v7, 0x0

    .line 4723
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRawMedia: append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4726
    :cond_0
    const/4 v0, -0x1

    .line 4728
    if-eqz p3, :cond_1

    .line 4729
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkCRForRawAttachment()V

    .line 4731
    :cond_1
    const/16 v1, 0x1c

    if-eq v1, p4, :cond_2

    const/16 v1, 0x14

    if-eq v1, p4, :cond_2

    const/16 v1, 0x1a

    if-eq v1, p4, :cond_2

    const/16 v1, 0x1b

    if-ne v1, p4, :cond_4

    .line 4734
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x5

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v0

    move v1, v0

    .line 4736
    :goto_0
    const v2, 0x7f09019a

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 4737
    if-nez v1, :cond_3

    .line 4738
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 4739
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachListPanel()V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4745
    :cond_3
    :goto_1
    return-void

    .line 4741
    :catch_0
    move-exception v0

    .line 4742
    const/4 v1, -0x5

    move-object v0, p0

    move v2, v8

    move-object v3, p1

    move v4, p4

    move v5, v7

    move v6, p2

    .line 4743
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private addRecipientsListeners()V
    .locals 0

    .prologue
    .line 6740
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6741
    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1250
    check-cast p2, Landroid/widget/ListView;

    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_0

    .line 1253
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1254
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1259
    :cond_0
    return-void
.end method

.method private addVideo(Landroid/net/Uri;ZZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4785
    if-eqz p1, :cond_0

    .line 4786
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v1

    .line 4787
    const v2, 0x7f090109

    const/16 v4, 0xc

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 4789
    :cond_0
    return-void
.end method

.method private addtext(I)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "intent.action.INTERACTION_LIST"

    const-string v2, "android.intent.action.PICK"

    .line 3994
    packed-switch p1, :pswitch_data_0

    .line 4041
    :goto_0
    return-void

    .line 3996
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3997
    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3998
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4002
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4003
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4004
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4006
    const/16 v1, 0x1f

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4007
    :catch_0
    move-exception v0

    .line 4008
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4009
    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4010
    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4011
    const v1, 0x7f090198

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4012
    const v1, 0x7f090080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4013
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 4018
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4019
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.memo"

    const-string v3, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4021
    const-string v1, "text/memo_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4022
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3994
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V
    .locals 2
    .parameter "attach"
    .parameter "position"

    .prologue
    .line 5521
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5522
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;I)Z

    .line 5524
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 5526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 5527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 5528
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5529
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 5533
    :goto_0
    return-void

    .line 5531
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0
.end method

.method private bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 2363
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 2365
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 2369
    :goto_0
    return-void

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    goto :goto_0
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f09007e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3633
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3635
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    .line 3636
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3637
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3640
    :cond_1
    if-ne v2, v5, :cond_4

    .line 3641
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    .line 3642
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3643
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3644
    const/16 v1, 0x1b

    invoke-interface {p1, v4, v1, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020038

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3667
    :cond_3
    :goto_1
    return-void

    .line 3652
    :cond_4
    if-le v2, v5, :cond_3

    .line 3653
    const/16 v0, 0x1e

    invoke-interface {p1, v4, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 2530
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2532
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2534
    const/4 v0, 0x1

    .line 2536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 2520
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2524
    const/4 v0, 0x1

    .line 2526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeIMEOption()V
    .locals 3

    .prologue
    const v2, 0x40000005

    const v1, 0x40000004

    .line 6875
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_0

    .line 6876
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6893
    :goto_0
    return-void

    .line 6879
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 6880
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 6886
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 6887
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 6883
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    goto :goto_1

    .line 6890
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method private changeToValidFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"

    .prologue
    .line 2287
    const/16 v5, 0xb

    new-array v3, v5, [C

    fill-array-data v3, :array_0

    .line 2288
    .local v3, invalid_char:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2290
    .local v1, filenameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2291
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2293
    .local v0, character:C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 2294
    aget-char v5, v3, v4

    if-ne v0, v5, :cond_0

    .line 2295
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2293
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2290
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2299
    .end local v0           #character:C
    .end local v4           #j:I
    :cond_2
    return-object p1

    .line 2287
    nop

    :array_0
    .array-data 0x2
        0x5ct 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x2at 0x0t
        0x3ft 0x0t
        0x22t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7ct 0x0t
        0x3bt 0x0t
        0xat 0x0t
    .end array-data
.end method

.method private checkCRForRawAttachment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 4715
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4716
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 4718
    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4720
    :cond_1
    return-void
.end method

.method private checkForTooManyRecipients()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1072
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    .line 1073
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 1074
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v1

    .line 1075
    if-le v1, v0, :cond_1

    move v2, v4

    .line 1077
    :goto_0
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    if-eq v1, v3, :cond_0

    .line 1080
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1081
    if-eqz v2, :cond_0

    .line 1091
    const v1, 0x7f09006c

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1097
    :cond_0
    return-void

    :cond_1
    move v2, v5

    .line 1075
    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 6456
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6457
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 6458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    .line 6460
    :cond_0
    return-void
.end method

.method private chooseContact(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 4056
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4057
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4058
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 4059
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4062
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 5970
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5971
    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5972
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5973
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5974
    if-eqz p2, :cond_0

    const v1, 0x7f0900b7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5976
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5977
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5978
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5979
    return-void

    .line 5974
    :cond_0
    const v1, 0x7f0900b6

    goto :goto_0
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 948
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 949
    .local v0, inputMothod:I
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 950
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 976
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0

    .line 960
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isInvalidRecipients()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 961
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090080

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 968
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_3

    .line 969
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 970
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 974
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0
.end method

.method private copyMedia(JLcom/android/mms/model/AttachmentModel;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2062
    const/4 v0, 0x1

    .line 2063
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 2065
    if-nez v1, :cond_0

    move v0, v7

    .line 2092
    :goto_0
    return v0

    .line 2070
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    move v3, v0

    move v0, v7

    .line 2071
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2072
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 2073
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 2077
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2079
    invoke-virtual {p3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 2080
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    and-int/2addr v3, v4

    .line 2071
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2084
    :catch_0
    move-exception v0

    .line 2085
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMedia : is failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2088
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v7

    .line 2090
    goto :goto_0

    :cond_3
    move v0, v3

    .line 2092
    goto :goto_0
.end method

.method private copyMessageToSIM(Lcom/android/mms/ui/MessageItem;)V
    .locals 12
    .parameter

    .prologue
    .line 1656
    const-string v0, "Mms/compose"

    const-string v1, "copyMessageToSIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget v4, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 1659
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 1660
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 1666
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 1668
    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 1669
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1670
    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 1671
    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1673
    const-string v2, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v2, 0x2

    const/16 v5, 0x8

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1676
    const/16 v5, 0x9

    const/16 v6, 0xf

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1678
    const-string v5, "Mms/compose"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-string v5, "Mms/compose"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1683
    const-string v0, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestamp : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1686
    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1687
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1690
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1692
    const-string v7, "pref_key_manage_smsc_address"

    const-string v8, "Not Set"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1694
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 1695
    const-string v7, ""

    .line 1697
    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 1698
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1704
    :cond_1
    :try_start_0
    const-string v7, "Mms/compose"

    const-string v8, "Copy Address : xxxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    if-nez v3, :cond_2

    .line 1707
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1721
    :catch_0
    move-exception v0

    .line 1722
    const-string v1, "Mms/compose"

    const-string v2, "NumberFormatException :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1723
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1711
    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    .line 1712
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 1713
    const-string v9, "Mms/compose"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MakeSimPdu : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    if-nez v8, :cond_3

    .line 1715
    const v8, 0x7f09002f

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1711
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1716
    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1717
    const v8, 0x7f09002e

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1719
    :cond_4
    const v8, 0x7f0900e8

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2096
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 2098
    const/4 v2, 0x0

    .line 2099
    const/4 v10, 0x0

    .line 2100
    const/4 v11, 0x0

    .line 2102
    const/4 v12, 0x1

    .line 2104
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v9

    .line 2105
    :try_start_1
    instance-of v1, v9, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1b

    .line 2106
    move-object v0, v9

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    .line 2109
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 2110
    if-nez v1, :cond_0

    .line 2111
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    .line 2113
    :cond_0
    if-nez v1, :cond_1

    .line 2114
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    .line 2118
    :cond_1
    if-nez v1, :cond_c

    move-object/from16 v1, p2

    .line 2139
    :goto_0
    const/4 v2, 0x1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2140
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2142
    :cond_2
    const/4 v2, 0x1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 2143
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2145
    :cond_3
    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2146
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2150
    :cond_4
    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 2151
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2153
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 2154
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 2156
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2157
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2158
    if-nez v2, :cond_5

    .line 2159
    const-string v2, "cl"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 2163
    :cond_5
    if-eqz v1, :cond_1a

    .line 2165
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    .line 2172
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2177
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 2178
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    .line 2183
    :goto_2
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extension"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2186
    const-string v4, "dcf"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2187
    const-string v1, "dcf"

    .line 2192
    :cond_7
    if-nez v1, :cond_8

    .line 2193
    const-string v4, "text/x-vCard"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2194
    const-string v1, "vcf"

    .line 2204
    :cond_8
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->changeToValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2206
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2207
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const-string v3, "_"

    .line 2210
    :cond_9
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 2211
    :try_start_4
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 2214
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2215
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2216
    const-string v4, "Mms/compose"

    const-string v5, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 2217
    const/4 v1, 0x0

    .line 2244
    if-eqz v9, :cond_a

    .line 2246
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2254
    :cond_a
    :goto_5
    if-eqz v10, :cond_b

    .line 2256
    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2266
    :cond_b
    :goto_6
    return v1

    .line 2122
    :cond_c
    :try_start_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_0

    .line 2163
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_d

    .line 2165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2233
    :catch_0
    move-exception v1

    move-object v2, v11

    move-object v3, v10

    move-object v4, v9

    .line 2235
    :goto_7
    :try_start_8
    const-string v5, "Mms/compose"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2236
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 2238
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2239
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2244
    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    :goto_8
    if-eqz v3, :cond_e

    .line 2246
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 2254
    :cond_e
    :goto_9
    if-eqz v2, :cond_f

    .line 2256
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 2262
    :cond_f
    :goto_a
    throw v1

    .line 2180
    :cond_10
    add-int/lit8 v4, v3, 0x1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2181
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_2

    .line 2195
    :cond_11
    const-string v4, "text/x-vCalendar"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2196
    const-string v1, "vcs"

    goto/16 :goto_3

    .line 2197
    :cond_12
    const-string v4, "text/x-vNote"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2198
    const-string v1, "vnt"

    goto/16 :goto_3

    .line 2208
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v3

    goto/16 :goto_4

    .line 2247
    :catch_1
    move-exception v2

    .line 2249
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 2257
    :catch_2
    move-exception v2

    .line 2259
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2220
    :cond_14
    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 2222
    const/16 v3, 0x1f40

    :try_start_d
    new-array v3, v3, [B

    .line 2224
    :goto_b
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 2225
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_b

    .line 2233
    :catch_3
    move-exception v3

    move-object v4, v9

    move-object v14, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_7

    .line 2230
    :cond_15
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move-object v1, v2

    .line 2244
    :goto_c
    if-eqz v9, :cond_19

    .line 2246
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    move v2, v12

    .line 2254
    :goto_d
    if-eqz v1, :cond_18

    .line 2256
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    move v1, v2

    .line 2262
    goto/16 :goto_6

    .line 2247
    :catch_4
    move-exception v2

    .line 2249
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2250
    const/4 v2, 0x0

    goto :goto_d

    .line 2257
    :catch_5
    move-exception v1

    .line 2259
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    const/4 v1, 0x0

    .line 2262
    goto/16 :goto_6

    .line 2241
    :cond_16
    const/4 v1, 0x0

    .line 2244
    if-eqz v4, :cond_17

    .line 2246
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 2254
    :cond_17
    :goto_e
    if-eqz v3, :cond_b

    .line 2256
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_6

    .line 2257
    :catch_6
    move-exception v1

    .line 2259
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    const/4 v1, 0x0

    .line 2262
    goto/16 :goto_6

    .line 2247
    :catch_7
    move-exception v1

    .line 2249
    const-string v2, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2250
    const/4 v1, 0x0

    goto :goto_e

    .line 2247
    :catch_8
    move-exception v3

    .line 2249
    const-string v4, "Mms/compose"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 2257
    :catch_9
    move-exception v2

    .line 2259
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 2244
    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_8

    :catchall_3
    move-exception v1

    move-object v2, v10

    move-object v3, v9

    goto/16 :goto_8

    :catchall_4
    move-exception v1

    move-object v3, v9

    goto/16 :goto_8

    .line 2233
    :catch_a
    move-exception v1

    move-object v3, v10

    move-object v4, v2

    move-object v2, v11

    goto/16 :goto_7

    :catch_b
    move-exception v2

    move-object v3, v10

    move-object v4, v9

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_7

    :cond_18
    move v1, v2

    goto/16 :goto_6

    :cond_19
    move v2, v12

    goto :goto_d

    :cond_1a
    move-object v1, v2

    goto/16 :goto_1

    :cond_1b
    move-object v1, v10

    goto :goto_c
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1648
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    .line 1650
    invoke-virtual {p0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    return-void
.end method

.method private createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 5498
    .line 5499
    const/high16 v0, 0x423c

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->displayDensity:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5501
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 5502
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5504
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 5505
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5507
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    mul-int/2addr v1, v3

    const/high16 v3, 0x3f80

    invoke-direct {v5, v6, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5509
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 5511
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;

    const v3, 0x7f03000a

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 5514
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 5515
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5516
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5517
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 6748
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6749
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 6750
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6756
    :cond_0
    return-object v0
.end method

.method private dialRecipient()V
    .locals 5

    .prologue
    .line 3467
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 3470
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3471
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3477
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3478
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3479
    return-void
.end method

.method private drawBottomPanel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 5118
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetCounter()V

    .line 5120
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5121
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5151
    :cond_0
    :goto_0
    return-void

    .line 5125
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5126
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 5127
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5128
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_2

    .line 5129
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 5130
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->requestFocus()Z

    goto :goto_0

    .line 5134
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5135
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_4

    .line 5136
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 5138
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5141
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    .line 5142
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 5143
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getIsInTextSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5145
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5146
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 5149
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private drawTopPanel(Z)V
    .locals 1
    .parameter "showEmptySubject"

    .prologue
    .line 5154
    if-eqz p1, :cond_0

    .line 5155
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 5158
    :goto_0
    return-void

    .line 5157
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 1546
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1547
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1551
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1553
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 1555
    :cond_0
    return-void

    .line 1549
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1582
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1583
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1585
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 1588
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 1590
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 1592
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachListPanel()V

    .line 1594
    :cond_0
    return-void
.end method

.method private editSlideshow()V
    .locals 4

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    .line 414
    .local v0, dataUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 415
    const v2, 0x7f090062

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 418
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 420
    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 421
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1565
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v1

    .line 1566
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 1567
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1569
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1572
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1574
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    return-void

    .line 1569
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "exit"

    .prologue
    const/4 v2, 0x1

    .line 3283
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCMAS:Z

    if-ne v2, v0, :cond_0

    .line 3306
    :goto_0
    return-void

    .line 3285
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3287
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    if-nez v0, :cond_2

    .line 3288
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3289
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3290
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    if-eqz v0, :cond_2

    .line 3291
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3293
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3297
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3300
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 3304
    :cond_4
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    .line 3305
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private focusChangeRecipients()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setFocusChangeRecipients()V

    .line 434
    :cond_0
    return-void
.end method

.method private forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, -0x3

    const/4 v12, -0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x4

    .line 1737
    invoke-static {v11}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 1738
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 1740
    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1741
    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1742
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FWD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1832
    :goto_0
    return-void

    .line 1746
    :cond_0
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1747
    const v1, 0x7f090057

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1748
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1751
    :goto_1
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1752
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p0}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1754
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v1

    .line 1756
    if-eqz v1, :cond_e

    .line 1757
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v10

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1758
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 1760
    :try_start_0
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1761
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 1762
    check-cast v1, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    :cond_1
    :goto_4
    move v1, v7

    :goto_5
    move v7, v1

    .line 1778
    goto :goto_3

    .line 1763
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1764
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 1765
    check-cast v1, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_4

    .line 1770
    :catch_0
    move-exception v1

    move v1, v13

    .line 1778
    goto :goto_5

    .line 1766
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1767
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 1768
    check-cast v1, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    .line 1772
    :catch_1
    move-exception v1

    .line 1773
    const/4 v1, -0x2

    .line 1778
    goto :goto_5

    .line 1774
    :catch_2
    move-exception v1

    move v1, v9

    .line 1778
    goto :goto_5

    .line 1776
    :catch_3
    move-exception v1

    move v1, v12

    .line 1777
    goto :goto_5

    :cond_4
    move v2, v7

    .line 1778
    goto :goto_2

    :cond_5
    move v1, v2

    .line 1783
    :goto_6
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1784
    if-eqz v2, :cond_8

    .line 1785
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v10

    move v7, v1

    .line 1786
    :goto_7
    if-ge v6, v5, :cond_7

    .line 1788
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v8, "text/x-vNote"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1789
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkCRForRawAttachment()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_6
    move v1, v7

    .line 1786
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_7

    .line 1791
    :catch_4
    move-exception v1

    move v1, v13

    .line 1799
    goto :goto_8

    .line 1793
    :catch_5
    move-exception v1

    .line 1794
    const/4 v1, -0x2

    .line 1799
    goto :goto_8

    .line 1795
    :catch_6
    move-exception v1

    move v1, v9

    .line 1799
    goto :goto_8

    .line 1797
    :catch_7
    move-exception v1

    move v1, v12

    .line 1798
    goto :goto_8

    :cond_7
    move v1, v7

    .line 1803
    :cond_8
    if-eq v1, v12, :cond_9

    if-ne v1, v9, :cond_d

    .line 1804
    :cond_9
    invoke-static {p0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    .line 1805
    if-ne v2, v11, :cond_a

    .line 1806
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1807
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1808
    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1809
    const v2, 0x7f0901a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1810
    const v2, 0x7f090080

    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1811
    const v2, 0x7f090081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1812
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1813
    :cond_a
    if-nez v2, :cond_c

    .line 1814
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1815
    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1816
    if-ne v1, v9, :cond_b

    .line 1817
    const v1, 0x7f090050

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1821
    :goto_9
    const v1, 0x7f0901ad

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1822
    const v1, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1823
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1819
    :cond_b
    const v1, 0x7f090156

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    .line 1826
    :cond_c
    invoke-direct {p0, p1, v3, v4, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1829
    :cond_d
    invoke-direct {p0, p1, v3, v4, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_e
    move v1, v10

    goto/16 :goto_6

    :cond_f
    move-object v4, v1

    goto/16 :goto_1
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1866
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1867
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1868
    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1871
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 1873
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1880
    const-string v2, "msg_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1881
    const-string v1, "subject"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1882
    const-string v1, "checkCRMode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1883
    const-string v1, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1884
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1885
    :goto_0
    return-void

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    const v0, 0x7f090067

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAttachmentCount(Lcom/android/mms/model/SlideshowModel;J)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1100
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1102
    if-nez v0, :cond_0

    move v0, v2

    .line 1124
    :goto_0
    return v0

    .line 1106
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    move v3, v2

    .line 1109
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1110
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 1111
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1112
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1114
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1109
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1120
    :cond_2
    const-string v4, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application/smil"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1121
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    .line 1124
    goto :goto_0
.end method

.method private getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "cid:"

    const-string v9, "."

    .line 5705
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 5706
    if-nez v0, :cond_0

    .line 5707
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    .line 5709
    :cond_0
    if-nez v0, :cond_1

    .line 5710
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    .line 5713
    :cond_1
    if-nez v0, :cond_9

    .line 5715
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 5719
    :goto_0
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_2

    .line 5720
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5722
    :cond_2
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_3

    .line 5723
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5725
    :cond_3
    const-string v1, "cid:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5726
    const-string v1, "cid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5729
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 5730
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5732
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 5733
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5735
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5736
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5737
    if-nez v1, :cond_5

    .line 5738
    const-string v1, "cl"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 5742
    :cond_5
    if-eqz v0, :cond_f

    .line 5744
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 5751
    :cond_6
    :goto_1
    const-string v1, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 5752
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 5758
    :goto_2
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5759
    const-string v2, "dcf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5760
    const-string v0, "dcf"

    .line 5765
    :cond_7
    if-nez v0, :cond_8

    .line 5766
    const-string v2, "text/x-vCard"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5767
    const-string v0, "vcf"

    .line 5775
    :cond_8
    :goto_3
    if-nez v0, :cond_e

    move-object v0, v1

    .line 5779
    :goto_4
    return-object v0

    .line 5717
    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto/16 :goto_0

    .line 5742
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    .line 5744
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 5754
    :cond_b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5755
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 5768
    :cond_c
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5769
    const-string v0, "vcs"

    goto :goto_3

    .line 5770
    :cond_d
    const-string v2, "text/x-vNote"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5771
    const-string v0, "vnt"

    goto :goto_3

    .line 5779
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private getImportMediaCount(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xa

    .line 4827
    .line 4828
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 4829
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    .line 4830
    :goto_0
    add-int v1, p1, v0

    if-le v1, v4, :cond_1

    .line 4831
    sub-int v0, v4, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4833
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4838
    :goto_1
    return v0

    :cond_0
    move v0, v5

    .line 4829
    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6322
    if-eqz p1, :cond_1

    .line 6323
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6325
    if-eqz v0, :cond_1

    .line 6327
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6328
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 6331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 6335
    :goto_0
    return-wide v0

    .line 6331
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6335
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 6331
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 5
    .parameter "type"
    .parameter "msgId"
    .parameter "createFromCursorIfNotInCache"

    .prologue
    const/4 v4, 0x0

    .line 606
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 607
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    :cond_0
    const-string v1, "Mms/compose"

    const-string v2, "Bad cursor."

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 612
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, v4

    goto :goto_1
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 2346
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    goto :goto_0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 5111
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5112
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1198
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/mms/ui/MessageListItem;

    .line 1199
    if-nez p0, :cond_0

    move-object v0, v4

    .line 1246
    :goto_0
    return-object v0

    .line 1214
    :cond_0
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1215
    if-eqz v0, :cond_3

    .line 1216
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1217
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1218
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    move v5, v2

    move-object v2, v1

    move v1, v5

    .line 1221
    :goto_1
    if-ne v1, v3, :cond_2

    .line 1223
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1224
    if-eqz p0, :cond_2

    .line 1225
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1226
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1227
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    move-object p0, v0

    move v0, v2

    .line 1233
    :goto_2
    if-eq v1, v0, :cond_1

    .line 1234
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1235
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1237
    check-cast p0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    .line 1240
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1241
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 1246
    goto :goto_0

    :cond_2
    move-object p0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    move v1, v3

    move-object v2, v4

    goto :goto_1
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v4, "."

    .line 2272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2273
    if-nez p2, :cond_0

    .line 2274
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2279
    :goto_0
    const/4 v1, 0x2

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2280
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2277
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2282
    :cond_1
    return-object v1
.end method

.method private getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    .line 3775
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 3309
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 3310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3311
    return-void
.end method

.method private handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4575
    if-nez p1, :cond_1

    .line 4578
    const v0, 0x7f09019a

    if-eq p2, v0, :cond_0

    .line 4579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 4580
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 4631
    :cond_0
    :goto_0
    return-void

    .line 4584
    :cond_1
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$29;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$29;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/net/Uri;IZZ)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4662
    invoke-static {p0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4664
    packed-switch v0, :pswitch_data_0

    .line 4690
    :cond_0
    :goto_0
    return-void

    .line 4668
    :pswitch_0
    const v0, 0x7f090108

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4669
    const v6, 0x7f090175

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4671
    :cond_1
    const v0, 0x7f090109

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4672
    const v6, 0x7f090176

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4674
    :cond_2
    const v0, 0x7f090107

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4675
    const v6, 0x7f090177

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4677
    :cond_3
    const v0, 0x7f09019a

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4678
    const v6, 0x7f0901a2

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4684
    :pswitch_1
    const v0, 0x7f0901c9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4664
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleForwardedMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4797
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4801
    const-string v0, "forwarded_message"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 4823
    :goto_0
    return v0

    .line 4805
    :cond_0
    const-string v0, "msg_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4807
    const-string v2, "Mms:app"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle forwarded message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4811
    :cond_1
    if-eqz v0, :cond_2

    .line 4813
    const-string v2, "checkCRMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4815
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, "subject"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4821
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v0, v5

    .line 4823
    goto :goto_0

    .line 4817
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, "sms_body"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f0901c8

    const/16 v5, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "android.intent.extra.STREAM"

    .line 4842
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4843
    if-nez v1, :cond_0

    move v1, v8

    .line 4973
    :goto_0
    return v1

    .line 4846
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4848
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4849
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 4850
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4851
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 4852
    const-string v3, "vcard"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4853
    if-eqz v3, :cond_1

    const-string v4, "vcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4855
    const-string v3, "content://com.android.contacts/contacts/as_vcard/"

    .line 4856
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x37

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4857
    const-string v4, "%3A"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4858
    array-length v4, v1

    .line 4859
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getImportMediaCount(I)I

    move-result v4

    move v5, v8

    .line 4860
    :goto_1
    if-ge v5, v4, :cond_2

    .line 4862
    aget-object v6, v1, v5

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 4863
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v2, v6, v8, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    .line 4860
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4866
    :cond_1
    invoke-direct {p0, v2, v1, v8, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    :cond_2
    move v1, v9

    .line 4868
    goto :goto_0

    .line 4869
    :cond_3
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4870
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    move v1, v9

    .line 4871
    goto/16 :goto_0

    .line 4873
    :cond_4
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4876
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 4877
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4878
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 4880
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4881
    add-int v4, v2, v1

    if-le v4, v5, :cond_b

    .line 4882
    sub-int v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4884
    const v2, 0x7f09006d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v4, v1

    .line 4907
    :goto_3
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move v5, v8

    move v6, v8

    .line 4914
    :goto_4
    if-ge v5, v4, :cond_8

    .line 4915
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 4917
    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 4918
    if-eqz v2, :cond_7

    .line 4919
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4920
    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v2, v1, v9, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    move v1, v6

    .line 4914
    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v1

    goto :goto_4

    :cond_5
    move v1, v8

    .line 4878
    goto :goto_2

    .line 4922
    :cond_6
    if-nez v6, :cond_a

    .line 4924
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4925
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4926
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v9

    .line 4927
    goto :goto_5

    .line 4929
    :cond_7
    if-nez v2, :cond_a

    .line 4930
    if-nez v6, :cond_a

    .line 4932
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4933
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4934
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v9

    goto :goto_5

    :cond_8
    move v1, v9

    .line 4971
    goto/16 :goto_0

    :cond_9
    move v1, v8

    .line 4973
    goto/16 :goto_0

    :cond_a
    move v1, v6

    goto :goto_5

    :cond_b
    move v4, v2

    goto :goto_3
.end method

.method private hasRecipientData(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 6400
    const/4 v1, 0x0

    .line 6403
    .local v1, result:Z
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 6410
    :cond_0
    :goto_0
    return v1

    .line 6404
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 6405
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 6406
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 6407
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private haveEmailContact(Ljava/lang/String;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1351
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1355
    if-eqz v0, :cond_2

    .line 1357
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1358
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1367
    :goto_0
    return v0

    .line 1364
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 1367
    goto :goto_0

    .line 1364
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private hideOrShowTopPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2677
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 2678
    .local v0, anySubViewsVisible:Z
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2679
    return-void

    .end local v0           #anySubViewsVisible:Z
    :cond_1
    move v0, v2

    .line 2677
    goto :goto_0

    .line 2678
    .restart local v0       #anySubViewsVisible:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private hideRecipientEditor(Z)V
    .locals 2
    .parameter "toFieldHide"

    .prologue
    const/16 v1, 0x8

    .line 3315
    if-eqz p1, :cond_0

    .line 3316
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3317
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3318
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3319
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3320
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 3322
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3323
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3329
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    .line 3330
    return-void
.end method

.method private hideSipExplict()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6857
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 6858
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isTextEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6861
    :cond_2
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-eqz v0, :cond_3

    .line 6862
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 6863
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6867
    :cond_3
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v8, "exit_on_sent"

    .line 6339
    if-eqz p1, :cond_0

    .line 6340
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6341
    invoke-static {v0, v3, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6344
    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    .line 6345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 6396
    :goto_0
    return-void

    .line 6351
    :cond_0
    const-string v0, "thread_id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 6352
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 6353
    invoke-static {p0, v0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6393
    :cond_1
    :goto_1
    const-string v0, "exit_on_sent"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    .line 6394
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "sms_body"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 6395
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "subject"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 6355
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 6360
    if-eqz v0, :cond_7

    .line 6361
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 6364
    :goto_2
    if-eqz v1, :cond_6

    const-string v2, "smsto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6366
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isSmsto:Z

    .line 6367
    const-string v1, "sendto"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6370
    :goto_3
    if-eqz v1, :cond_3

    .line 6371
    invoke-static {p0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 6373
    :cond_3
    if-eqz v0, :cond_4

    .line 6375
    invoke-static {p0, v0, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6378
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 6379
    invoke-virtual {p0, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto :goto_1

    .line 6383
    :cond_4
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6385
    invoke-static {v0, v3, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 6388
    :cond_5
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto/16 :goto_1

    :cond_6
    move-object v1, v5

    goto :goto_3

    :cond_7
    move-object v1, v5

    goto :goto_2
.end method

.method private initFocus()V
    .locals 1

    .prologue
    .line 6418
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-nez v0, :cond_0

    .line 6442
    :goto_0
    return-void

    .line 6425
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6431
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 6441
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    goto :goto_0

    .line 6433
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isTextEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6436
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method

.method private initMessageList()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 6031
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 6058
    :goto_0
    return-void

    .line 6035
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6036
    if-nez v0, :cond_1

    move-object v5, v2

    .line 6042
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 6045
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 6046
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 6047
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6048
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 6049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 6051
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$35;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$35;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 6036
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v5, v0

    goto :goto_1
.end method

.method private initRecipientsEditor()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2391
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    :goto_0
    return-void

    .line 2397
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 2398
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 2400
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2401
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    .line 2403
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 2404
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    .line 2407
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_3

    .line 2408
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2411
    :cond_3
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2412
    if-eqz v0, :cond_5

    .line 2413
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AddRecipientButtonEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    .line 2422
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2423
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setVisibility(I)V

    .line 2428
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setHandler(Landroid/os/Handler;)V

    .line 2429
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AddRecipientButtonEditor;->CreateAddRecipientButton()V

    .line 2431
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2432
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2433
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 2434
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_4

    .line 2435
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 2439
    :cond_4
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 2440
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2442
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2444
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2446
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditorListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2448
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 2451
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x1f40

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 2452
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 2454
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$11;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2473
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$12;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2511
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    .line 2512
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2415
    :cond_5
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AddRecipientButtonEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    goto/16 :goto_1

    .line 2425
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 5339
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 5340
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5341
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    .line 5342
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    .line 5343
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5344
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5345
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    .line 5346
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    .line 5347
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    .line 5349
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 5350
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5351
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    .line 5352
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5353
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    .line 5354
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setHandler(Landroid/os/Handler;)V

    .line 5355
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5356
    if-eqz v0, :cond_0

    .line 5357
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContactHeader;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    .line 5358
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->init()V

    .line 5360
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$32;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$32;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5403
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 5404
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    .line 5406
    :cond_1
    return-void
.end method

.method private initializeContactInfo()V
    .locals 3

    .prologue
    .line 6702
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6704
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6705
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updatePresence(Lcom/android/mms/data/Contact;)V

    .line 6709
    :goto_0
    return-void

    .line 6707
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updatePresence(Lcom/android/mms/data/Contact;)V

    goto :goto_0
.end method

.method private insertText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 7
    .parameter "textEditor"
    .parameter "insertWord"

    .prologue
    .line 6785
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 6786
    .local v0, a:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 6787
    .local v1, b:I
    const/4 v4, 0x0

    .line 6788
    .local v4, length:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 6791
    .local v2, before:Landroid/text/Editable;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6793
    .local v3, buf:Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 6794
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6795
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 6796
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6798
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_0

    .line 6799
    const/16 v4, 0x3e8

    .line 6803
    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 6804
    return-void

    .line 6801
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v4, v0, v5

    goto :goto_0
.end method

.method private isAttachSupportedType(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 5049
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5055
    :cond_0
    const/4 v0, 0x1

    .line 5057
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBottomPanelVisible()Z
    .locals 1

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumberInContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1373
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1374
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 1378
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    return v1
.end method

.method private isPreparedForSending()Z
    .locals 2

    .prologue
    .line 6116
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 6121
    .local v0, recipientCount:I
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPreparedForSendingButton()Z
    .locals 2

    .prologue
    .line 6127
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 6132
    .local v0, recipientCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRecipientCallable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3446
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 3447
    .local v2, recipients:Lcom/android/mms/data/ContactList;
    const/4 v1, 0x0

    .line 3449
    .local v1, parsedCallNumber:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 3450
    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 3452
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3453
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3454
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 3463
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0       #number:Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 3458
    goto :goto_0

    .line 3463
    .end local v0           #number:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private isRecipientsEditorVisible()Z
    .locals 1

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 1

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextEditorVisible()Z
    .locals 1

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnderLength(III)Z
    .locals 1
    .parameter "currentLength"
    .parameter "addingLength"
    .parameter "MaxLength"

    .prologue
    .line 6807
    add-int v0, p1, p2

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDraft()V
    .locals 2

    .prologue
    .line 6061
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6062
    const-string v0, "Mms/compose"

    const-string v1, "loadDraft() called with non-empty working message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6072
    :goto_0
    return-void

    .line 6066
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6067
    const-string v0, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6070
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    goto :goto_0
.end method

.method private loadMessageContent()V
    .locals 0

    .prologue
    .line 2980
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    .line 2981
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initializeContactInfo()V

    .line 2982
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 2983
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 2984
    return-void
.end method

.method private lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2016
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2021
    :goto_0
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2023
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2024
    const-string v2, "locked"

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2026
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$8;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2032
    return-void

    .line 2019
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2024
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 7
    .parameter "logMsg"

    .prologue
    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 399
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 400
    .local v3, tid:J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 401
    .local v2, stack:[Ljava/lang/StackTraceElement;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, methodName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 404
    const-string v5, "Mms/compose"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method private noItemSelectedDialog()V
    .locals 3

    .prologue
    .line 4098
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09018c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090146

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4104
    return-void
.end method

.method private onKeyboardStateChanged(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3190
    if-eqz p1, :cond_2

    .line 3191
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 3194
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3195
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3197
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3202
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 3213
    :goto_0
    return-void

    .line 3204
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3

    .line 3205
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    .line 3207
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 3208
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3210
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3211
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method

.method private parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3483
    .line 3485
    const/4 v0, 0x0

    .line 3487
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3488
    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 3489
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3491
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p1

    .line 3495
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3496
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3498
    const/4 v0, 0x1

    const-string v2, "tel:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 3499
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3501
    if-ltz v0, :cond_2

    .line 3502
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3503
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYLEE - sep : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " After parsedCallNumber : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3509
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p0

    .line 3506
    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method private parseMultiPicker(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "reqCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 4749
    if-nez p1, :cond_1

    .line 4763
    :cond_0
    return-void

    .line 4751
    :cond_1
    const/4 v2, 0x0

    .line 4752
    .local v2, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4753
    .local v1, count:I
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getImportMediaCount(I)I

    move-result v3

    .line 4754
    .local v3, importCount:I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 4755
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4757
    .local v0, attachUri:Landroid/net/Uri;
    const/16 v4, 0x1b

    if-ne p2, v4, :cond_2

    .line 4758
    const/4 v4, 0x1

    invoke-direct {p0, v0, v5, v4, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    .line 4754
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4760
    :cond_2
    invoke-direct {p0, v0, v5, v5, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    goto :goto_1
.end method

.method public static raiseThreadPriority()V
    .locals 2

    .prologue
    const/16 v1, -0x13

    .line 6896
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mStarted:Z

    if-nez v0, :cond_0

    .line 6897
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mStarted:Z

    .line 6898
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->defaultThreadPriority:I

    if-eq v0, v1, :cond_0

    .line 6899
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6901
    :cond_0
    return-void
.end method

.method private recipientCount()I
    .locals 2

    .prologue
    .line 6137
    const/4 v0, 0x0

    .line 6143
    .local v0, recipientCount:I
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6144
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    .line 6148
    :goto_0
    return v0

    .line 6146
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private removeRecipientsListeners()V
    .locals 0

    .prologue
    .line 6744
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6745
    return-void
.end method

.method private resendMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1599
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1601
    const-string v0, "Mms/compose"

    const-string v1, "message sending is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const v0, 0x7f0901d8

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1603
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 1613
    :goto_0
    return-void

    .line 1608
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 1611
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1632
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1634
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, p0}, Lcom/android/mms/data/WorkingMessage;->isPendingSizeOver(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    .line 1637
    new-instance v3, Lcom/android/mms/transaction/MmsMessageSender;

    iget v4, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v4, v4

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1639
    :try_start_0
    invoke-interface {v3, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1640
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v3

    .line 1643
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", threadId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1616
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 1617
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 1619
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 1621
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    :goto_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1627
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v6, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1628
    return-void

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetCounter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    .line 628
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    return-void
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 6203
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6204
    const-string v0, "resetMessage"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6208
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 6211
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 6214
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6220
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6222
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 6224
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6225
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor(Z)V

    .line 6229
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 6230
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    .line 6232
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6234
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetRecipients(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6236
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 6237
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6239
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 6240
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 6241
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setNextFocusDownId(I)V

    .line 6252
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6253
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 6257
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 6259
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 6262
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6266
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 6268
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6271
    :cond_2
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 6272
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 6273
    return-void

    .line 6244
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    goto :goto_0

    .line 6249
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetRecipients(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 9
    .parameter "Contacts"

    .prologue
    .line 6276
    new-instance v5, Lcom/android/mms/data/ContactList;

    invoke-direct {v5}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 6280
    .local v5, list:Lcom/android/mms/data/ContactList;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 6281
    .local v1, Contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 6282
    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6283
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 6284
    .local v2, contact:Lcom/android/mms/data/Contact;
    if-eqz v2, :cond_0

    .line 6286
    :try_start_0
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/mms/data/Contact;

    move-object v2, v0

    .line 6287
    invoke-virtual {v2, v6}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 6288
    invoke-virtual {v5, v2}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6289
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 6290
    .local v3, e:Ljava/lang/CloneNotSupportedException;
    const-string v7, "Mms/compose"

    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6296
    .end local v1           #Contact:Lcom/android/mms/data/Contact;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #e:Ljava/lang/CloneNotSupportedException;
    .end local v6           #number:Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static resetThreadPriority()V
    .locals 2

    .prologue
    .line 6904
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 6905
    .local v0, currentThreadPriority:I
    sget v1, Lcom/android/mms/ui/ComposeMessageActivity;->defaultThreadPriority:I

    if-eq v0, v1, :cond_0

    .line 6906
    sget v1, Lcom/android/mms/ui/ComposeMessageActivity;->defaultThreadPriority:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6908
    :cond_0
    return-void
.end method

.method private saveDraft(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    const-string v3, "Mms:app"

    .line 6083
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCMAS:Z

    if-ne v0, v1, :cond_1

    .line 6113
    :cond_0
    :goto_0
    return-void

    .line 6087
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6091
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6092
    const-string v0, "Mms:app"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6093
    const-string v0, "saveDraft: not worth saving, discard WorkingMessage and bail"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6096
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    if-nez v0, :cond_0

    .line 6097
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6098
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 6103
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6104
    const-string v0, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6107
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 6109
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    if-eqz v0, :cond_0

    .line 6110
    const v0, 0x7f090069

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendMessage(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Mms/compose"

    .line 6153
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6154
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6156
    const-string v0, "Mms/compose"

    const-string v0, "message sending is disabled"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6157
    const v0, 0x7f0901d8

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6158
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 6200
    :cond_0
    :goto_0
    return-void

    .line 6163
    :cond_1
    if-eqz p1, :cond_2

    .line 6165
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6166
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6168
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6172
    :catch_0
    move-exception v0

    .line 6174
    const-string v1, "Mms/compose"

    const-string v1, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6178
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    if-nez v0, :cond_3

    .line 6181
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 6182
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 6183
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 6184
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 6185
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 6188
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 6189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6194
    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    if-eqz v0, :cond_0

    .line 6195
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    if-nez v0, :cond_5

    .line 6196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 6198
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0
.end method

.method public static setIsHideExplict(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 6871
    sput-boolean p0, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6872
    return-void
.end method

.method private setSendButtonText(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    .line 3392
    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3403
    return-void
.end method

.method private setTextEditorMaxLines()V
    .locals 3

    .prologue
    .line 6813
    const/16 v0, 0xa

    .line 6814
    .local v0, maxLines:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 6815
    add-int/lit8 v0, v0, -0x1

    .line 6817
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 6818
    add-int/lit8 v0, v0, -0x2

    .line 6822
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 6823
    add-int/lit8 v0, v0, -0x4

    .line 6830
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6831
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 6835
    :goto_1
    return-void

    .line 6824
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 6826
    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 6833
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    goto :goto_1
.end method

.method private showAddAttachmentDialog(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3951
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3952
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3953
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3988
    :goto_0
    return-void

    .line 3969
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3970
    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3971
    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3974
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    if-nez v1, :cond_1

    .line 3975
    new-instance v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    .line 3979
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$25;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$25;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3986
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showAddtextDialog()V
    .locals 3

    .prologue
    .line 4065
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4067
    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4069
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    .line 4070
    new-instance v1, Lcom/android/mms/ui/AddTextSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    .line 4072
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$26;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$26;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4078
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4079
    return-void
.end method

.method private showAttachListPanel()V
    .locals 2

    .prologue
    .line 4520
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 4521
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 4523
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4527
    :cond_0
    :goto_0
    return-void

    .line 4525
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showChooseContactDialog()V
    .locals 3

    .prologue
    .line 4082
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4083
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4086
    new-instance v1, Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    .line 4088
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$27;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$27;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4094
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4095
    return-void
.end method

.method private showDeliveryReport(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2304
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2305
    const-string v1, "message_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2307
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2308
    return-void
.end method

.method private showRecentPhonebook()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleContactPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .local v0, intentContacts:Landroid/content/Intent;
    const-string v1, "Mms/compose"

    const-string v2, "1. Recent : startActivityForResult()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 427
    return-void
.end method

.method private showSipExplict()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6839
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 6840
    :cond_0
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6854
    :cond_1
    :goto_0
    return-void

    .line 6844
    :cond_2
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6845
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 6846
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isTextEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6849
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-nez v0, :cond_1

    .line 6850
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method private showSmileyDialog()V
    .locals 14

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "name"

    const-string v12, "icon"

    .line 6603
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 6604
    sget-object v0, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 6605
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 6607
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 6610
    array-length v4, v1

    .line 6612
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v9

    .line 6613
    :goto_0
    if-ge v5, v4, :cond_2

    move v6, v9

    .line 6617
    :goto_1
    if-ge v6, v5, :cond_4

    .line 6618
    aget v7, v0, v5

    aget v8, v0, v6

    if-ne v7, v8, :cond_1

    move v6, v10

    .line 6623
    :goto_2
    if-nez v6, :cond_0

    .line 6624
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 6626
    const-string v7, "icon"

    aget v7, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6627
    const-string v7, "name"

    aget-object v7, v1, v5

    invoke-virtual {v6, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6628
    const-string v7, "text"

    aget-object v8, v3, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6630
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6613
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6617
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6634
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030036

    new-array v4, v11, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v12, v4, v9

    const-string v1, "name"

    aput-object v13, v4, v10

    const/4 v1, 0x2

    const-string v5, "text"

    aput-object v5, v4, v1

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 6640
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$37;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$37;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6650
    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 6652
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6654
    const v2, 0x7f09011c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6656
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6657
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$38;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$38;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6691
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 6694
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6695
    return-void

    :cond_4
    move v6, v9

    goto :goto_2

    .line 6634
    nop

    :array_0
    .array-data 0x4
        0xcft 0x0t 0x8t 0x7ft
        0xd0t 0x0t 0x8t 0x7ft
        0xd1t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f080044

    const/4 v3, 0x0

    const v2, 0x7f080043

    .line 2599
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSubjectEditor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 2606
    if-nez p1, :cond_1

    .line 2674
    :goto_0
    return-void

    .line 2610
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2611
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2614
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2616
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$14;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$14;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2624
    if-eqz p1, :cond_c

    .line 2625
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2631
    :goto_2
    if-nez p1, :cond_3

    .line 2632
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isTextEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2633
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2644
    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 2645
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2646
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2652
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2653
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_10

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2654
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2655
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2656
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2657
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2658
    :cond_6
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2659
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2661
    :cond_7
    if-eqz p1, :cond_a

    .line 2663
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2664
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2665
    :cond_8
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2666
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2667
    :cond_9
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2668
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2672
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 2673
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    goto/16 :goto_0

    .line 2614
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2627
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    .line 2634
    :cond_d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2635
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_3

    .line 2637
    :cond_e
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 2638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_3

    .line 2648
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_4

    .line 2653
    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_5
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 5314
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5315
    :cond_0
    const v0, 0x7f0901c1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 5316
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5319
    :cond_1
    return-void
.end method

.method private startExportRawAttachments(Ljava/util/ArrayList;J)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5785
    const-string v2, "/sdcard/download/"

    .line 5786
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v1, v5

    .line 5790
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 5799
    const-string v3, "text/plain"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "application/smil"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5800
    const/4 v1, 0x1

    .line 5805
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5809
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    .line 5817
    :cond_1
    :goto_2
    return-void

    .line 5790
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5812
    :cond_3
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 5813
    if-eqz v0, :cond_1

    .line 5814
    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;->start()V

    goto :goto_2

    :cond_4
    move v1, v5

    goto :goto_1
.end method

.method private startMsgListQuery()V
    .locals 8

    .prologue
    const/16 v2, 0x2537

    .line 6003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 6005
    if-nez v3, :cond_0

    .line 6028
    :goto_0
    return-void

    .line 6008
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMsgListQuery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6013
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 6021
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6025
    :catch_0
    move-exception v0

    .line 6026
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private toastConvertInfo(Z)V
    .locals 2
    .parameter "toMms"

    .prologue
    .line 863
    if-eqz p1, :cond_0

    const v1, 0x7f090063

    move v0, v1

    .line 865
    .local v0, resId:I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 866
    return-void

    .line 863
    .end local v0           #resId:I
    :cond_0
    const v1, 0x7f090064

    move v0, v1

    goto :goto_0
.end method

.method private updateCounter(Ljava/lang/CharSequence;IIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 641
    const/4 v0, 0x0

    .line 644
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 645
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 648
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 650
    :cond_0
    if-eqz v2, :cond_1

    .line 651
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 660
    :cond_1
    :goto_1
    const-string v2, "Mms/compose"

    const-string v3, "tempRecipients : xxxxxxxx havaEmailAliasRecipients : xxxxxxxx"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 666
    :cond_3
    if-eqz v0, :cond_4

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 669
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefixText : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_2
    const/16 v1, 0x3e8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    .line 677
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_5

    .line 678
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    :goto_3
    return-void

    :cond_4
    move-object v0, p1

    .line 672
    goto :goto_2

    .line 694
    :cond_5
    if-nez p5, :cond_14

    .line 695
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 696
    if-eqz v1, :cond_14

    move v1, v7

    .line 700
    :goto_4
    if-ne v1, v6, :cond_8

    .line 701
    invoke-static {v0, v5, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    .line 714
    :goto_5
    aget v1, v0, v5

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    .line 715
    aget v0, v0, v7

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    .line 718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->checkIfAddressContainsEmailToMms(Ljava/util/List;)V

    .line 722
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 724
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    const/16 v1, 0x98

    if-ge v0, v1, :cond_b

    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    move v0, v5

    .line 741
    :goto_7
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    .line 743
    if-eqz v1, :cond_6

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    if-le v2, v9, :cond_7

    :cond_6
    if-nez v1, :cond_13

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    if-gt v2, v6, :cond_7

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    if-gt v2, v9, :cond_13

    :cond_7
    move v2, v6

    .line 747
    :goto_8
    if-nez v0, :cond_12

    .line 749
    if-eqz v2, :cond_10

    .line 751
    if-eqz v1, :cond_f

    .line 752
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :goto_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 702
    :cond_8
    if-nez v1, :cond_9

    .line 703
    invoke-static {v0, v5, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    goto :goto_5

    .line 705
    :cond_9
    invoke-static {v0, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    goto :goto_5

    .line 718
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 726
    :cond_b
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    const/16 v1, 0x98

    if-ne v0, v1, :cond_e

    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 729
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    :cond_c
    move v0, v6

    .line 730
    goto :goto_7

    .line 734
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    :cond_e
    move v0, v5

    goto :goto_7

    .line 755
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 762
    :cond_10
    if-eqz v1, :cond_11

    .line 763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    :goto_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 765
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 772
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0 / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_13
    move v2, v5

    goto/16 :goto_8

    :cond_14
    move v1, p5

    goto/16 :goto_4

    :cond_15
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private updatePresence(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 6699
    return-void
.end method

.method private updateRecipientsCounts(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSendButtonState()V
    .locals 3

    .prologue
    .line 6301
    const/4 v0, 0x0

    .line 6303
    .local v0, enable:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSendingButton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6307
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6308
    const/4 v0, 0x1

    .line 6316
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->setSendButtonText(Z)V

    .line 6317
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6318
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 6319
    return-void

    .line 6310
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    goto :goto_0

    .line 6312
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_0

    .line 6313
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    goto :goto_0
.end method

.method private updateSendFailedNotification()V
    .locals 4

    .prologue
    .line 2987
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2988
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2999
    :goto_0
    return-void

    .line 2993
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$17;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$17;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateWindowTitle()V
    .locals 0

    .prologue
    .line 6415
    return-void
.end method


# virtual methods
.method public alertInvalidRecipientsPopup(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/compose"

    const-string v4, "_data"

    .line 4979
    const-string v6, ""

    .line 4981
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4982
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4984
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v4, v2, v5

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4988
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 4990
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4991
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4992
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The actual path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    move-object v0, v7

    .line 5017
    :goto_0
    if-eqz v0, :cond_0

    .line 5019
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 5026
    :goto_1
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    .line 5027
    invoke-static {v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5028
    const-string v3, ""

    .line 5030
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5033
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 5034
    if-ltz v3, :cond_6

    .line 5035
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5038
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5039
    if-nez v0, :cond_1

    .line 5045
    :cond_1
    return-object v0

    .line 4995
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4997
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 4999
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5000
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5001
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The actual path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 5004
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 5006
    if-eqz v0, :cond_8

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 5008
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5009
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5010
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The actual path is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 5017
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    if-eqz v1, :cond_4

    .line 5019
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 5022
    :cond_5
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5023
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 5017
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto/16 :goto_2

    :cond_7
    move-object v0, v6

    goto/16 :goto_1

    :cond_8
    move-object v1, v6

    goto/16 :goto_0
.end method

.method public initialize(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2682
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2685
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2688
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2690
    const-string v1, "Mms:app"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recipients = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2696
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2699
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->undeliveredMessageDialog(J)V

    .line 2701
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 2704
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList()V

    .line 2712
    if-eqz p1, :cond_10

    .line 2713
    const-string v1, "CurLang"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2716
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 2717
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2718
    :cond_2
    if-eqz v1, :cond_a

    .line 2719
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v5

    .line 2722
    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2723
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleForwardedMessage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    .line 2724
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    if-nez v0, :cond_4

    .line 2725
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()V

    .line 2748
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 2751
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    .line 2754
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor(Z)V

    .line 2755
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 2759
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2765
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 2767
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 2768
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 2769
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 2773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideMedia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2774
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 2778
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2779
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 2780
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2784
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2785
    iget v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v5, :cond_d

    move v1, v5

    :goto_4
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 2786
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_e

    move v0, v5

    :goto_5
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 2787
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 2790
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2791
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2792
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 2794
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setNextFocusDownId(I)V

    .line 2800
    :goto_6
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2803
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 2805
    :cond_8
    return-void

    :cond_9
    move v1, v4

    .line 2719
    goto/16 :goto_1

    :cond_a
    move v1, v4

    .line 2721
    goto/16 :goto_1

    .line 2729
    :cond_b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2730
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$15;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 2762
    :cond_c
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor(Z)V

    goto/16 :goto_3

    :cond_d
    move v1, v4

    .line 2785
    goto :goto_4

    :cond_e
    move v0, v4

    .line 2786
    goto :goto_5

    .line 2798
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_6

    :cond_10
    move-object v1, v3

    goto/16 :goto_0
.end method

.method public isCallInProgress(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 472
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 474
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidRecipients()Z
    .locals 2

    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 980
    .local v0, isMms:Z
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    const/4 v1, 0x1

    .line 985
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x14

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v3, "android.intent.extra.STREAM"

    const-string v2, ""

    .line 4109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4112
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 4115
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_f

    :cond_0
    move v1, v6

    .line 4128
    :goto_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    .line 4129
    if-nez p3, :cond_3

    .line 4516
    :cond_1
    :goto_1
    return-void

    .line 4132
    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 4133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: bail due to resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4137
    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4204
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    .line 4206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4207
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4208
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4209
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto :goto_1

    .line 4139
    :pswitch_2
    if-eqz p3, :cond_1

    .line 4141
    const/4 v0, 0x0

    .line 4142
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_4

    .line 4143
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4145
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    .line 4146
    if-eqz v1, :cond_1

    .line 4148
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 4150
    new-instance v2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 4151
    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 4154
    :cond_5
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4155
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 4156
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 4158
    if-eqz v0, :cond_6

    .line 4159
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0, v6}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4164
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideMedia()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4165
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 4168
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 4169
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    goto/16 :goto_1

    .line 4184
    :pswitch_3
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4185
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4188
    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    .line 4190
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4191
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4192
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4193
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4222
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

    .line 4224
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4225
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4227
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4236
    :pswitch_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

    .line 4238
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4239
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4240
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4241
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4254
    :pswitch_6
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4255
    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    .line 4257
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4258
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4259
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4260
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4268
    :pswitch_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    .line 4270
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4271
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4272
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4273
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4279
    :pswitch_8
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4280
    if-eqz v0, :cond_1

    .line 4281
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto/16 :goto_1

    .line 4287
    :pswitch_9
    if-eqz p3, :cond_1

    .line 4290
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4291
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4292
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 4294
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4295
    const-string v1, "vcard"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4296
    if-eqz v1, :cond_9

    const-string v2, "vcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4298
    const-string v1, "content://com.android.contacts/contacts/as_vcard/"

    .line 4299
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4300
    const-string v2, "%3A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4301
    array-length v2, v0

    .line 4302
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getImportMediaCount(I)I

    move-result v2

    move v3, v6

    .line 4303
    :goto_2
    if-ge v3, v2, :cond_a

    .line 4305
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4, v6, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    .line 4303
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4311
    :cond_9
    invoke-direct {p0, v0, v6, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    .line 4314
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4315
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4316
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4317
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4326
    :pswitch_a
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4328
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4329
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4330
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4331
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4337
    :pswitch_b
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4339
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4340
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4341
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4342
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4349
    :pswitch_c
    const-string v0, "contact_number"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4350
    if-eqz v0, :cond_1

    .line 4351
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4352
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4353
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_1

    .line 4359
    :pswitch_d
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4362
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4363
    const-string v1, "Mms/compose"

    const-string v2, "REQUEST_PHONE_MULTI selectedNumbers = xxxxxxxx"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    if-eqz v0, :cond_1

    .line 4365
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4366
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4367
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_1

    .line 4373
    :pswitch_e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4380
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4384
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 4399
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4400
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto/16 :goto_1

    .line 4393
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4403
    :pswitch_f
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4410
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4414
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 4429
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4430
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto/16 :goto_1

    .line 4423
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4434
    :pswitch_10
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4441
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4445
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 4460
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4461
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto/16 :goto_1

    .line 4454
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 4483
    :pswitch_11
    if-eqz p3, :cond_1

    const-string v0, "empty_thread"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4484
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 4485
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4486
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 4487
    invoke-static {}, Lcom/android/mms/data/Contact;->clearContactsCache()V

    .line 4488
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto/16 :goto_1

    .line 4497
    :pswitch_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 4498
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4500
    if-nez v0, :cond_e

    .line 4501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4504
    :cond_e
    if-eqz v0, :cond_1

    .line 4505
    invoke-static {v0, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4506
    if-eqz v0, :cond_1

    .line 4507
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_1

    :cond_f
    move v1, v4

    goto/16 :goto_0

    .line 4137
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_12
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 3357
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$19;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3365
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 3435
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$23;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3441
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5166
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 5167
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5169
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5170
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 5172
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3166
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3168
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v4, :cond_2

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 3172
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move v0, v4

    .line 3173
    .local v0, isLandscape:Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eq v1, v0, :cond_1

    .line 3174
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 3176
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3177
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/RecipientsEditor;->ensureImeVisible(Z)V

    .line 3182
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 3184
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 3185
    return-void

    .end local v0           #isLandscape:Z
    :cond_2
    move v1, v5

    .line 3171
    goto :goto_0

    :cond_3
    move v0, v5

    .line 3172
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2545
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->raiseThreadPriority()V

    .line 2546
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2550
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    .line 2551
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mEncodingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2555
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2556
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->displayDensity:F

    .line 2558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->requestWindowFeature(I)Z

    .line 2560
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setContentView(I)V

    .line 2561
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    .line 2564
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V

    .line 2566
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 2567
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 2569
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;)V

    .line 2571
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2579
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2580
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2582
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->resetThreadPriority()V

    .line 2584
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2585
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/SearchManager;

    if-eqz v1, :cond_1

    .line 2586
    check-cast v0, Landroid/app/SearchManager;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$13;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 2595
    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    .line 2596
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 5821
    packed-switch p1, :pswitch_data_0

    .line 5831
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5823
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09019d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5828
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 5821
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 3142
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3143
    const-string v0, "onDestroy: save draft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3146
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 3147
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 3151
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsContaminatedMsg:Z

    if-nez v0, :cond_2

    .line 3152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3159
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3162
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5176
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 5177
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    .line 5179
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 5180
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5181
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 5228
    :goto_0
    return v0

    .line 5195
    :cond_0
    if-eqz p3, :cond_1

    move v0, v2

    .line 5205
    goto :goto_0

    .line 5210
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-ne v0, p1, :cond_4

    .line 5212
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    move v0, v2

    .line 5213
    goto :goto_0

    .line 5215
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    :goto_1
    move v0, v1

    .line 5228
    goto :goto_0

    .line 5219
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 5220
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_5

    .line 5221
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5224
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5225
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 3229
    sparse-switch p1, :sswitch_data_0

    .line 3263
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 3231
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3234
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3240
    if-eqz v2, :cond_0

    .line 3241
    const/16 v1, 0x15

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v6, v7

    .line 3242
    :goto_1
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;Z)V

    .line 3246
    invoke-direct {p0, v1, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v1, v7

    .line 3247
    goto :goto_0

    .line 3235
    :catch_0
    move-exception v1

    .line 3236
    const-string v2, "Mms/compose"

    const-string v3, "Unexpected ClassCastException."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3237
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v6, v5

    .line 3241
    goto :goto_1

    .line 3253
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3254
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    move v1, v7

    .line 3255
    goto :goto_0

    .line 3259
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    move v1, v7

    .line 3260
    goto :goto_0

    .line 3229
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3268
    packed-switch p1, :pswitch_data_0

    .line 3277
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3270
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$18;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 3275
    const/4 v0, 0x1

    goto :goto_0

    .line 3268
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMaxPendingMessagesReached()V
    .locals 1

    .prologue
    .line 3424
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3426
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$22;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3432
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3419
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    .line 3421
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter

    .prologue
    const/4 v12, 0x2

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2809
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2811
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->closeContextMenu()V

    .line 2813
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    if-eqz v0, :cond_0

    .line 2814
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2815
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 2818
    iput-boolean v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 2822
    const-string v0, "thread_id"

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2823
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2827
    if-eqz v2, :cond_d

    .line 2828
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 2832
    :goto_0
    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    .line 2833
    invoke-static {p0, v0, v1, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    move-object v4, v3

    move v3, v9

    .line 2868
    :goto_1
    const-string v5, "Mms:app"

    invoke-static {v5, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNewIntent: data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", thread_id extra is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     new conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2873
    :cond_1
    if-eqz v4, :cond_9

    .line 2876
    invoke-virtual {v4, v10}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2884
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v0}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v10

    .line 2888
    :goto_2
    if-eqz v0, :cond_6

    .line 2890
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2891
    const-string v0, "onNewIntent: same conversation"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2905
    :goto_3
    return-void

    .line 2835
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 2839
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v10}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients(Z)V

    .line 2840
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v2}, Lcom/android/mms/data/Conversation;->sameRecipient(Landroid/net/Uri;)Z

    move-result v4

    .line 2842
    :goto_4
    if-nez v4, :cond_b

    .line 2847
    if-eqz v3, :cond_a

    const-string v5, "smsto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2849
    iput-boolean v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isSmsto:Z

    .line 2850
    const-string v3, "sendto"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2853
    :goto_5
    if-eqz v3, :cond_3

    .line 2854
    invoke-static {p0, v3, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v3

    move v13, v4

    move-object v4, v3

    move v3, v13

    goto/16 :goto_1

    .line 2856
    :cond_3
    invoke-static {p0, v2, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 2859
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 2861
    invoke-virtual {p0, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    :cond_4
    move v13, v4

    move-object v4, v3

    move v3, v13

    goto/16 :goto_1

    :cond_5
    move v0, v9

    .line 2884
    goto :goto_2

    .line 2893
    :cond_6
    const-string v0, "Mms:app"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2894
    const-string v0, "onNewIntent: different conversation, initialize..."

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2896
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_8

    .line 2897
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2901
    :goto_6
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;)V

    .line 2902
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    goto/16 :goto_3

    .line 2899
    :cond_8
    invoke-direct {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto :goto_6

    :cond_9
    move v0, v3

    goto/16 :goto_2

    :cond_a
    move-object v3, v11

    goto :goto_5

    :cond_b
    move v3, v4

    move-object v4, v11

    goto/16 :goto_1

    :cond_c
    move v4, v9

    goto :goto_4

    :cond_d
    move-object v3, v11

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3671
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3766
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 3673
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 3674
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3675
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3677
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-nez v0, :cond_0

    .line 3678
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0

    .line 3683
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 3684
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 3689
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 3692
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3694
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 3695
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3696
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0

    .line 3705
    :pswitch_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 3710
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onSearchRequested()Z

    goto :goto_0

    .line 3715
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3720
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3723
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3724
    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3727
    :pswitch_8
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$24;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$24;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3734
    :pswitch_9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dialRecipient()V

    goto :goto_0

    .line 3737
    :pswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmileyDialog()V

    goto :goto_0

    .line 3741
    :pswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 3742
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3743
    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 3744
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3745
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3746
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3753
    :pswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddtextDialog()V

    goto/16 :goto_0

    .line 3756
    :pswitch_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 3757
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3762
    :pswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showChooseContactDialog()V

    goto/16 :goto_0

    .line 3671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3110
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3112
    if-eqz v0, :cond_0

    .line 3113
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3115
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 3116
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    if-eqz v0, :cond_1

    .line 3117
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3118
    :cond_1
    return-void
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 3412
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3413
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f020044

    const v5, 0x20200df

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3514
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 3516
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 3517
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3521
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3522
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3523
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3524
    const v0, 0x7f0900d8

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    move v0, v3

    .line 3626
    :goto_1
    return v0

    .line 3528
    :cond_1
    const v0, 0x7f0900d9

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 3558
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3559
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3560
    const/16 v0, 0xc

    const v1, 0x7f09007d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3564
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3565
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3566
    const v0, 0x7f090045

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3575
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3576
    const/4 v0, 0x3

    const v1, 0x7f090044

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020039

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3587
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3588
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3590
    const/16 v0, 0x9

    const v1, 0x7f090188

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3594
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3595
    :cond_7
    const/16 v0, 0x1a

    const v1, 0x7f09011c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3599
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 3603
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3604
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 3605
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 3606
    const v0, 0x7f0900d8

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3615
    :cond_9
    :goto_3
    const/4 v0, 0x4

    const v1, 0x7f090047

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3617
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3618
    const/4 v0, 0x6

    const v1, 0x7f090009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3625
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    move v0, v3

    .line 3626
    goto/16 :goto_1

    .line 3568
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3570
    const/16 v0, 0xa

    const v1, 0x7f090189

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3610
    :cond_c
    const v0, 0x7f0900d9

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onProtocolChanged(Z)V
    .locals 1
    .parameter "mms"

    .prologue
    .line 3371
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$20;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$20;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3388
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 2909
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2911
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2917
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2918
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 2923
    :cond_0
    :goto_0
    return-void

    .line 2919
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2920
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "Mms/compose"

    .line 3019
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3040
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 3043
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3044
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 3045
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 3054
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 3058
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    .line 3059
    const-string v0, "Mms/compose"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onResume mEncodingType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 3065
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSipExplict()V

    .line 3067
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    .line 3069
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 3073
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    .line 3074
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->checkValidMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3075
    const-string v0, "Mms/compose"

    const-string v0, "onResume: contaminated message : finish activity"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsContaminatedMsg:Z

    .line 3077
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 3080
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 3082
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    if-eqz v0, :cond_2

    .line 3083
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->reloadAttachement()V

    .line 3084
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 3085
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    .line 3088
    :cond_2
    const-string v0, "Mms/compose"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume : CMAS val = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCMAS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    return-void

    .line 3048
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 3050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 3003
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3005
    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 3008
    const-string v0, "CurLang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    if-eqz v0, :cond_0

    .line 3011
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3014
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    .line 3015
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2927
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2931
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 2933
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2935
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    .line 2936
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initFocus()V

    .line 2939
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2942
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2943
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientTokenizer(Landroid/content/Context;)Z

    .line 2945
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$16;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$16;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2958
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 2959
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 2960
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2961
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 2964
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2965
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2968
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v1, :cond_2

    .line 2969
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2970
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 2973
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 2974
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2977
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 3122
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3125
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 3126
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->onSaveCheckDraftInfo()V

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 3132
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 3133
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3136
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3137
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 6713
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$39;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$39;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6737
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 3218
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 3222
    if-eqz p1, :cond_0

    .line 3223
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 3225
    :cond_0
    return-void
.end method

.method public showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5622
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 5623
    if-nez v0, :cond_0

    .line 5699
    :goto_0
    return-void

    .line 5627
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    .line 5628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v8

    .line 5644
    :goto_1
    if-ge v3, v1, :cond_3

    .line 5645
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 5646
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 5647
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5649
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5644
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5654
    :cond_2
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5657
    invoke-direct {p0, v4, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;

    move-result-object v6

    .line 5660
    :try_start_0
    new-instance v7, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v7, p0, v5, v6, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 5665
    :goto_3
    if-eqz v4, :cond_1

    .line 5666
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 5661
    :catch_0
    move-exception v4

    .line 5663
    invoke-virtual {v4}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v4, v10

    goto :goto_3

    .line 5670
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 5671
    const v0, 0x7f09018e

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5674
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 5676
    invoke-direct {p0, v2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    .line 5679
    :cond_5
    new-instance v6, Lcom/android/mms/ui/AttachmentListAdapter;

    const v0, 0x7f030001

    invoke-direct {v6, p0, v0, v2}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 5680
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5681
    const v0, 0x7f09018c

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5682
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5683
    if-eqz p2, :cond_6

    .line 5684
    const v8, 0x7f090136

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;

    move-object v1, p0

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5688
    :goto_4
    const v0, 0x7f090081

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$AttachCancelListener;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity$AttachCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5689
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$34;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$34;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5694
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5695
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5697
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 5686
    :cond_6
    const v8, 0x7f09004a

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;

    move-object v1, p0

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4
.end method

.method public showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4694
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4696
    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4697
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4698
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4699
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4700
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4701
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4702
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 855
    if-ltz p2, :cond_0

    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 859
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 860
    return-void
.end method

.method public startActivityInActivity(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1348
    return-void
.end method

.method undeliveredMessageDialog(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 5983
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5986
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 5987
    const v1, 0x7f09001f

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 5994
    :goto_0
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5996
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 5997
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 5998
    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 5999
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6000
    return-void

    .line 5991
    :cond_0
    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method
