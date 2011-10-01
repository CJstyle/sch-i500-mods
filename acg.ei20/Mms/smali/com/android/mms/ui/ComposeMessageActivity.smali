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

    .line 355
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    .line 369
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mStarted:Z

    .line 370
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

    .line 187
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 357
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAlreadyShown:Z

    .line 359
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRawAttachmentHandler:Landroid/os/Handler;

    .line 388
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    .line 390
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsContaminatedMsg:Z

    .line 433
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButtonHandler:Landroid/os/Handler;

    .line 476
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    .line 539
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$3;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 563
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$4;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 991
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$5;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1123
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$6;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1377
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$7;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2302
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 2304
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$9;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 2363
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$10;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditorListener:Landroid/view/View$OnKeyListener;

    .line 3365
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$21;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 4470
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$28;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 5171
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$30;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 5261
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$31;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 6374
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$36;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$36;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 6685
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$40;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$40;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->focusChangeRecipients()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
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
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isTextEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isBottomPanelVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showRecentPhonebook()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initializeContactInfo()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/text/Editable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateRecipientsCounts(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
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
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
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
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/SlideshowModel;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getAttachmentCount(Lcom/android/mms/model/SlideshowModel;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->showDeliveryReport(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AddRecipientButtonEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setSendButtonText(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AddTextSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->addtext(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->chooseContact(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/net/Uri;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return-void
.end method

.method static synthetic access$7100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-static {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAlreadyShown:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAlreadyShown:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

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
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;IIII)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showToast()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->noItemSelectedDialog()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ComposeMessageActivity;JLcom/android/mms/model/AttachmentModel;)Z
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
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRawAttachmentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessageActivity;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->isUnderLength(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updatePresence(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageContactHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
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

    .line 3721
    if-eqz p2, :cond_0

    .line 3729
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 3730
    packed-switch p1, :pswitch_data_0

    .line 3887
    :goto_0
    return-void

    .line 3735
    :pswitch_0
    const-string v0, "image/*"

    .line 3736
    if-eqz p2, :cond_1

    .line 3737
    const/16 v1, 0x29

    .line 3742
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 3739
    :cond_1
    const/16 v1, 0xa

    goto :goto_1

    .line 3746
    :pswitch_1
    if-eqz p2, :cond_2

    .line 3747
    const/16 v0, 0x2a

    .line 3751
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3752
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3754
    const-string v2, "return-uri"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3755
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3749
    :cond_2
    const/16 v0, 0xb

    goto :goto_2

    .line 3763
    :pswitch_2
    const-string v0, "video/*"

    .line 3764
    if-eqz p2, :cond_3

    .line 3765
    const/16 v1, 0x2b

    .line 3770
    :goto_3
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 3767
    :cond_3
    const/16 v1, 0xc

    goto :goto_3

    .line 3775
    :pswitch_3
    if-eqz p2, :cond_5

    .line 3776
    const/16 v0, 0x2c

    .line 3780
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 3781
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3783
    if-nez p2, :cond_4

    .line 3784
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 3787
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_6

    .line 3788
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoCaptureDurationLimit()I

    move-result v3

    .line 3789
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3790
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3791
    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3792
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3795
    const-string v1, "mms"

    invoke-virtual {v4, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3796
    invoke-virtual {p0, v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3778
    :cond_5
    const/16 v0, 0xd

    goto :goto_4

    .line 3799
    :cond_6
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3809
    :pswitch_4
    const-string v0, "/sdcard/Sounds"

    .line 3810
    const-string v1, "audio/*"

    .line 3811
    if-eqz p2, :cond_7

    .line 3812
    const/16 v2, 0x2d

    .line 3816
    :goto_5
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3814
    :cond_7
    const/16 v2, 0xe

    goto :goto_5

    .line 3821
    :pswitch_5
    if-eqz p2, :cond_8

    .line 3822
    const/16 v0, 0x2e

    .line 3826
    :goto_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;Z)V

    goto/16 :goto_0

    .line 3824
    :cond_8
    const/16 v0, 0xf

    goto :goto_6

    .line 3831
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 3832
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    goto/16 :goto_0

    .line 3730
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

    .line 5010
    if-eqz p2, :cond_0

    .line 5012
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 5013
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5014
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5042
    :cond_0
    :goto_0
    return-void

    .line 5017
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5019
    invoke-direct {p0, p2, p3, v4, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 5020
    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5022
    invoke-direct {p0, p2, p3, v4, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 5023
    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5024
    invoke-direct {p0, p2, p3, v4, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 5036
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5037
    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5038
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
    .line 4732
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v1

    .line 4733
    const v2, 0x7f090107

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 4734
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

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    iget v1, p3, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v1, v7, :cond_0

    .line 1263
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

    .line 1265
    :cond_0
    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1268
    const/16 v0, 0xf

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1269
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v5, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1272
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1273
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1275
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1276
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1279
    :cond_2
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1281
    if-ltz v2, :cond_8

    .line 1282
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1283
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 1286
    :goto_2
    const-string v3, "mailto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1287
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%s"

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1302
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    invoke-static {v4, v2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1303
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

    .line 1307
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->haveEmailContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    .line 1329
    :goto_3
    if-eqz v0, :cond_1

    .line 1330
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1331
    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    const/16 v3, 0x1b

    invoke-interface {p1, v5, v3, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    move v0, v5

    .line 1307
    goto :goto_3

    .line 1308
    :cond_4
    const-string v3, "tel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1309
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%s"

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1322
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    invoke-static {v4, v2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1323
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

    .line 1327
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_3

    .line 1338
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

    .line 4705
    const-string v0, "Mms:app"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4706
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

    .line 4708
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v1

    .line 4710
    const/4 v0, -0x4

    if-eq v1, v0, :cond_1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4713
    :cond_1
    const-string v0, "Mms:app"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4714
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

    .line 4716
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    .line 4718
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    .line 4722
    :goto_0
    return-void

    .line 4721
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
    .line 1182
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1189
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V

    .line 1190
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
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

    .line 4663
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4664
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

    .line 4666
    :cond_0
    const/4 v0, -0x1

    .line 4668
    if-eqz p3, :cond_1

    .line 4669
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkCRForRawAttachment()V

    .line 4671
    :cond_1
    const/16 v1, 0x1c

    if-eq v1, p4, :cond_2

    const/16 v1, 0x14

    if-eq v1, p4, :cond_2

    const/16 v1, 0x1a

    if-eq v1, p4, :cond_2

    const/16 v1, 0x1b

    if-ne v1, p4, :cond_4

    .line 4674
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

    .line 4676
    :goto_0
    const v2, 0x7f09019a

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 4677
    if-nez v1, :cond_3

    .line 4678
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 4679
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachListPanel()V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4685
    :cond_3
    :goto_1
    return-void

    .line 4681
    :catch_0
    move-exception v0

    .line 4682
    const/4 v1, -0x5

    move-object v0, p0

    move v2, v8

    move-object v3, p1

    move v4, p4

    move v5, v7

    move v6, p2

    .line 4683
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private addRecipientsListeners()V
    .locals 0

    .prologue
    .line 6670
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6671
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

    .line 1246
    check-cast p2, Landroid/widget/ListView;

    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;

    move-result-object v0

    .line 1248
    if-eqz v0, :cond_0

    .line 1249
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1250
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1255
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
    .line 4725
    if-eqz p1, :cond_0

    .line 4726
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v1

    .line 4727
    const v2, 0x7f090109

    const/16 v4, 0xc

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 4729
    :cond_0
    return-void
.end method

.method private addtext(I)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "intent.action.INTERACTION_LIST"

    const-string v2, "android.intent.action.PICK"

    .line 3934
    packed-switch p1, :pswitch_data_0

    .line 3981
    :goto_0
    return-void

    .line 3936
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3937
    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3938
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3942
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3944
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3946
    const/16 v1, 0x1f

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3947
    :catch_0
    move-exception v0

    .line 3948
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3949
    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3950
    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3951
    const v1, 0x7f090198

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3952
    const v1, 0x7f090080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3953
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3958
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3959
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.memo"

    const-string v3, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3961
    const-string v1, "text/memo_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3962
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3934
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
    .line 5461
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5462
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;I)Z

    .line 5464
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 5466
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 5467
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 5468
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5469
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 5473
    :goto_0
    return-void

    .line 5471
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
    .line 2355
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2356
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 2357
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 2361
    :goto_0
    return-void

    .line 2359
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

    .line 3573
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3575
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

    .line 3576
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3580
    :cond_1
    if-ne v2, v5, :cond_4

    .line 3581
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    .line 3582
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3583
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3584
    const/16 v1, 0x1b

    invoke-interface {p1, v4, v1, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020034

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3607
    :cond_3
    :goto_1
    return-void

    .line 3592
    :cond_4
    if-le v2, v5, :cond_3

    .line 3593
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
    .line 2522
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2526
    const/4 v0, 0x1

    .line 2528
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
    .line 2512
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2514
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2516
    const/4 v0, 0x1

    .line 2518
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

    .line 6788
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_0

    .line 6789
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6806
    :goto_0
    return-void

    .line 6792
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 6793
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 6799
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 6800
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 6796
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    goto :goto_1

    .line 6803
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method private changeToValidFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"

    .prologue
    .line 2279
    const/16 v5, 0xb

    new-array v3, v5, [C

    fill-array-data v3, :array_0

    .line 2280
    .local v3, invalid_char:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2282
    .local v1, filenameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2283
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2285
    .local v0, character:C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 2286
    aget-char v5, v3, v4

    if-ne v0, v5, :cond_0

    .line 2287
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2285
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2282
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2291
    .end local v0           #character:C
    .end local v4           #j:I
    :cond_2
    return-object p1

    .line 2279
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
    .line 4655
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4656
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 4658
    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4660
    :cond_1
    return-void
.end method

.method private checkForTooManyRecipients()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1068
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    .line 1069
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v1

    .line 1071
    if-le v1, v0, :cond_1

    move v2, v4

    .line 1073
    :goto_0
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    if-eq v1, v3, :cond_0

    .line 1076
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1077
    if-eqz v2, :cond_0

    .line 1087
    const v1, 0x7f09006c

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1093
    :cond_0
    return-void

    :cond_1
    move v2, v5

    .line 1071
    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 6386
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6387
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 6388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    .line 6390
    :cond_0
    return-void
.end method

.method private chooseContact(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 3996
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 3997
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3998
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3999
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4002
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 5910
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5911
    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5912
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5913
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5914
    if-eqz p2, :cond_0

    const v1, 0x7f0900b7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5916
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5917
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5918
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5919
    return-void

    .line 5914
    :cond_0
    const v1, 0x7f0900b6

    goto :goto_0
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 944
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 945
    .local v0, inputMothod:I
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 946
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 972
    :goto_0
    return-void

    .line 952
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isInvalidRecipients()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 957
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

    .line 964
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_3

    .line 965
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 966
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 970
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

    .line 2054
    const/4 v0, 0x1

    .line 2055
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 2057
    if-nez v1, :cond_0

    move v0, v7

    .line 2084
    :goto_0
    return v0

    .line 2062
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    move v3, v0

    move v0, v7

    .line 2063
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2064
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 2065
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 2069
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2071
    invoke-virtual {p3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 2072
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    and-int/2addr v3, v4

    .line 2063
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2076
    :catch_0
    move-exception v0

    .line 2077
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

    .line 2078
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2080
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v7

    .line 2082
    goto :goto_0

    :cond_3
    move v0, v3

    .line 2084
    goto :goto_0
.end method

.method private copyMessageToSIM(Lcom/android/mms/ui/MessageItem;)V
    .locals 12
    .parameter

    .prologue
    .line 1652
    const-string v0, "Mms/compose"

    const-string v1, "copyMessageToSIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget v4, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 1655
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 1656
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 1662
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 1664
    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 1665
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1666
    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 1667
    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1669
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

    .line 1671
    const/4 v2, 0x2

    const/16 v5, 0x8

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1672
    const/16 v5, 0x9

    const/16 v6, 0xf

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1674
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

    .line 1675
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

    .line 1677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1679
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

    .line 1681
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1682
    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1683
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1686
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1688
    const-string v7, "pref_key_manage_smsc_address"

    const-string v8, "Not Set"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1690
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 1691
    const-string v7, ""

    .line 1693
    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 1694
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    :try_start_0
    const-string v7, "Mms/compose"

    const-string v8, "Copy Address : xxxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    if-nez v3, :cond_2

    .line 1703
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

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    const-string v1, "Mms/compose"

    const-string v2, "NumberFormatException :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1707
    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    .line 1708
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 1709
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

    .line 1710
    if-nez v8, :cond_3

    .line 1711
    const v8, 0x7f09002f

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1707
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1712
    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1713
    const v8, 0x7f09002e

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1715
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
    .line 2088
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 2090
    const/4 v2, 0x0

    .line 2091
    const/4 v10, 0x0

    .line 2092
    const/4 v11, 0x0

    .line 2094
    const/4 v12, 0x1

    .line 2096
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v9

    .line 2097
    :try_start_1
    instance-of v1, v9, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1b

    .line 2098
    move-object v0, v9

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    .line 2101
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 2102
    if-nez v1, :cond_0

    .line 2103
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    .line 2105
    :cond_0
    if-nez v1, :cond_1

    .line 2106
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    .line 2110
    :cond_1
    if-nez v1, :cond_c

    move-object/from16 v1, p2

    .line 2131
    :goto_0
    const/4 v2, 0x1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2132
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2134
    :cond_2
    const/4 v2, 0x1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 2135
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2137
    :cond_3
    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2138
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2142
    :cond_4
    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 2143
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2145
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 2146
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

    .line 2148
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2149
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2150
    if-nez v2, :cond_5

    .line 2151
    const-string v2, "cl"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 2155
    :cond_5
    if-eqz v1, :cond_1a

    .line 2157
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    .line 2164
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

    .line 2169
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 2170
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    .line 2175
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

    .line 2177
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2178
    const-string v4, "dcf"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2179
    const-string v1, "dcf"

    .line 2184
    :cond_7
    if-nez v1, :cond_8

    .line 2185
    const-string v4, "text/x-vCard"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2186
    const-string v1, "vcf"

    .line 2196
    :cond_8
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->changeToValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2198
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2199
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const-string v3, "_"

    .line 2202
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

    .line 2203
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

    .line 2205
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 2206
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2207
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2208
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

    .line 2209
    const/4 v1, 0x0

    .line 2236
    if-eqz v9, :cond_a

    .line 2238
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2246
    :cond_a
    :goto_5
    if-eqz v10, :cond_b

    .line 2248
    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2258
    :cond_b
    :goto_6
    return v1

    .line 2114
    :cond_c
    :try_start_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_0

    .line 2155
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_d

    .line 2157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2225
    :catch_0
    move-exception v1

    move-object v2, v11

    move-object v3, v10

    move-object v4, v9

    .line 2227
    :goto_7
    :try_start_8
    const-string v5, "Mms/compose"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2228
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 2230
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2231
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2236
    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    :goto_8
    if-eqz v3, :cond_e

    .line 2238
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 2246
    :cond_e
    :goto_9
    if-eqz v2, :cond_f

    .line 2248
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 2254
    :cond_f
    :goto_a
    throw v1

    .line 2172
    :cond_10
    add-int/lit8 v4, v3, 0x1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2173
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_2

    .line 2187
    :cond_11
    const-string v4, "text/x-vCalendar"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2188
    const-string v1, "vcs"

    goto/16 :goto_3

    .line 2189
    :cond_12
    const-string v4, "text/x-vNote"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2190
    const-string v1, "vnt"

    goto/16 :goto_3

    .line 2200
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

    .line 2239
    :catch_1
    move-exception v2

    .line 2241
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 2249
    :catch_2
    move-exception v2

    .line 2251
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2212
    :cond_14
    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 2214
    const/16 v3, 0x1f40

    :try_start_d
    new-array v3, v3, [B

    .line 2216
    :goto_b
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 2217
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_b

    .line 2225
    :catch_3
    move-exception v3

    move-object v4, v9

    move-object v14, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_7

    .line 2222
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

    .line 2236
    :goto_c
    if-eqz v9, :cond_19

    .line 2238
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    move v2, v12

    .line 2246
    :goto_d
    if-eqz v1, :cond_18

    .line 2248
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    move v1, v2

    .line 2254
    goto/16 :goto_6

    .line 2239
    :catch_4
    move-exception v2

    .line 2241
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2242
    const/4 v2, 0x0

    goto :goto_d

    .line 2249
    :catch_5
    move-exception v1

    .line 2251
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2252
    const/4 v1, 0x0

    .line 2254
    goto/16 :goto_6

    .line 2233
    :cond_16
    const/4 v1, 0x0

    .line 2236
    if-eqz v4, :cond_17

    .line 2238
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 2246
    :cond_17
    :goto_e
    if-eqz v3, :cond_b

    .line 2248
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_6

    .line 2249
    :catch_6
    move-exception v1

    .line 2251
    const-string v2, "Mms/compose"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2252
    const/4 v1, 0x0

    .line 2254
    goto/16 :goto_6

    .line 2239
    :catch_7
    move-exception v1

    .line 2241
    const-string v2, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2242
    const/4 v1, 0x0

    goto :goto_e

    .line 2239
    :catch_8
    move-exception v3

    .line 2241
    const-string v4, "Mms/compose"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 2249
    :catch_9
    move-exception v2

    .line 2251
    const-string v3, "Mms/compose"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 2236
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

    .line 2225
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
    .line 1644
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    .line 1646
    invoke-virtual {p0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    return-void
.end method

.method private createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 5438
    .line 5439
    const/high16 v0, 0x423c

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->displayDensity:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5441
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 5442
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5444
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 5445
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5447
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    mul-int/2addr v1, v3

    const/high16 v3, 0x3f80

    invoke-direct {v5, v6, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5449
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 5451
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;

    const v3, 0x7f030007

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 5454
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 5455
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5456
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5457
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 6678
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6679
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 6680
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6682
    :cond_0
    return-object v0
.end method

.method private dialRecipient()V
    .locals 5

    .prologue
    .line 3427
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 3430
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3431
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3437
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

    .line 3438
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3439
    return-void
.end method

.method private drawBottomPanel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 5058
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetCounter()V

    .line 5060
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5061
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5091
    :cond_0
    :goto_0
    return-void

    .line 5065
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5066
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 5067
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5068
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_2

    .line 5069
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 5070
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->requestFocus()Z

    goto :goto_0

    .line 5074
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5075
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_4

    .line 5076
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 5078
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5081
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    .line 5082
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 5083
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getIsInTextSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5085
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5086
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 5089
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
    .line 5094
    if-eqz p1, :cond_0

    .line 5095
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 5098
    :goto_0
    return-void

    .line 5097
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
    .line 1542
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1543
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1547
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1549
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 1551
    :cond_0
    return-void

    .line 1545
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 1575
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1578
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1580
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1581
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1583
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 1584
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 1586
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

    .line 1587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 1588
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachListPanel()V

    .line 1590
    :cond_0
    return-void
.end method

.method private editSlideshow()V
    .locals 4

    .prologue
    .line 408
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    .line 410
    .local v0, dataUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 411
    const v2, 0x7f090062

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 414
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 416
    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 417
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1561
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v1

    .line 1562
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 1563
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1565
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1568
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1570
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    return-void

    .line 1565
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
    .locals 2
    .parameter "exit"

    .prologue
    .line 3245
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3247
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    if-nez v0, :cond_1

    .line 3248
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3249
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3250
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    if-eqz v0, :cond_1

    .line 3251
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3253
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 3266
    :goto_0
    return-void

    .line 3257
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3260
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 3264
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    .line 3265
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private focusChangeRecipients()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setFocusChangeRecipients()V

    .line 430
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

    .line 1733
    invoke-static {v11}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 1734
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1735
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 1736
    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1737
    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1738
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

    .line 1739
    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1828
    :goto_0
    return-void

    .line 1742
    :cond_0
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1743
    const v1, 0x7f090057

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1744
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1745
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

    .line 1747
    :goto_1
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1748
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p0}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1750
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v1

    .line 1752
    if-eqz v1, :cond_e

    .line 1753
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

    .line 1754
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

    .line 1756
    :try_start_0
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1757
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 1758
    check-cast v1, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    :cond_1
    :goto_4
    move v1, v7

    :goto_5
    move v7, v1

    .line 1774
    goto :goto_3

    .line 1759
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1760
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 1761
    check-cast v1, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_4

    .line 1766
    :catch_0
    move-exception v1

    move v1, v13

    .line 1774
    goto :goto_5

    .line 1762
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1763
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 1764
    check-cast v1, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    .line 1768
    :catch_1
    move-exception v1

    .line 1769
    const/4 v1, -0x2

    .line 1774
    goto :goto_5

    .line 1770
    :catch_2
    move-exception v1

    move v1, v9

    .line 1774
    goto :goto_5

    .line 1772
    :catch_3
    move-exception v1

    move v1, v12

    .line 1773
    goto :goto_5

    :cond_4
    move v2, v7

    .line 1774
    goto :goto_2

    :cond_5
    move v1, v2

    .line 1779
    :goto_6
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1780
    if-eqz v2, :cond_8

    .line 1781
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v10

    move v7, v1

    .line 1782
    :goto_7
    if-ge v6, v5, :cond_7

    .line 1784
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

    .line 1785
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkCRForRawAttachment()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_6
    move v1, v7

    .line 1782
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_7

    .line 1787
    :catch_4
    move-exception v1

    move v1, v13

    .line 1795
    goto :goto_8

    .line 1789
    :catch_5
    move-exception v1

    .line 1790
    const/4 v1, -0x2

    .line 1795
    goto :goto_8

    .line 1791
    :catch_6
    move-exception v1

    move v1, v9

    .line 1795
    goto :goto_8

    .line 1793
    :catch_7
    move-exception v1

    move v1, v12

    .line 1794
    goto :goto_8

    :cond_7
    move v1, v7

    .line 1799
    :cond_8
    if-eq v1, v12, :cond_9

    if-ne v1, v9, :cond_d

    .line 1800
    :cond_9
    invoke-static {p0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    .line 1801
    if-ne v2, v11, :cond_a

    .line 1802
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1803
    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1804
    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1805
    const v2, 0x7f0901a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1806
    const v2, 0x7f090080

    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1807
    const v2, 0x7f090081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1808
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1809
    :cond_a
    if-nez v2, :cond_c

    .line 1810
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1811
    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1812
    if-ne v1, v9, :cond_b

    .line 1813
    const v1, 0x7f090050

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1817
    :goto_9
    const v1, 0x7f0901ad

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1818
    const v1, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1819
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1815
    :cond_b
    const v1, 0x7f090156

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    .line 1822
    :cond_c
    invoke-direct {p0, p1, v3, v4, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1825
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

    .line 1862
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1863
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1864
    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1867
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 1869
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1876
    const-string v2, "msg_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1877
    const-string v1, "subject"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1878
    const-string v1, "checkCRMode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1879
    const-string v1, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1880
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1881
    :goto_0
    return-void

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
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

    .line 1872
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

    .line 1096
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_0

    move v0, v2

    .line 1120
    :goto_0
    return v0

    .line 1102
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    move v3, v2

    .line 1105
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1106
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 1107
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1108
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1110
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

    .line 1105
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1116
    :cond_2
    const-string v4, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application/smil"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1117
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    .line 1120
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

    .line 5645
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 5646
    if-nez v0, :cond_0

    .line 5647
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    .line 5649
    :cond_0
    if-nez v0, :cond_1

    .line 5650
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    .line 5653
    :cond_1
    if-nez v0, :cond_9

    .line 5655
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 5659
    :goto_0
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_2

    .line 5660
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5662
    :cond_2
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_3

    .line 5663
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5665
    :cond_3
    const-string v1, "cid:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5666
    const-string v1, "cid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5669
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 5670
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5672
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 5673
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5675
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5676
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5677
    if-nez v1, :cond_5

    .line 5678
    const-string v1, "cl"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 5682
    :cond_5
    if-eqz v0, :cond_f

    .line 5684
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 5691
    :cond_6
    :goto_1
    const-string v1, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 5692
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 5698
    :goto_2
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5699
    const-string v2, "dcf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5700
    const-string v0, "dcf"

    .line 5705
    :cond_7
    if-nez v0, :cond_8

    .line 5706
    const-string v2, "text/x-vCard"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5707
    const-string v0, "vcf"

    .line 5715
    :cond_8
    :goto_3
    if-nez v0, :cond_e

    move-object v0, v1

    .line 5719
    :goto_4
    return-object v0

    .line 5657
    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto/16 :goto_0

    .line 5682
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    .line 5684
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 5694
    :cond_b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5695
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 5708
    :cond_c
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5709
    const-string v0, "vcs"

    goto :goto_3

    .line 5710
    :cond_d
    const-string v2, "text/x-vNote"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5711
    const-string v0, "vnt"

    goto :goto_3

    .line 5719
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

    .line 4767
    .line 4768
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 4769
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    .line 4770
    :goto_0
    add-int v1, p1, v0

    if-le v1, v4, :cond_1

    .line 4771
    sub-int v0, v4, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4773
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

    .line 4778
    :goto_1
    return v0

    :cond_0
    move v0, v5

    .line 4769
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

    .line 6252
    if-eqz p1, :cond_1

    .line 6253
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

    .line 6255
    if-eqz v0, :cond_1

    .line 6257
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6258
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 6261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 6265
    :goto_0
    return-wide v0

    .line 6261
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6265
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 6261
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

    .line 602
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 603
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

    .line 604
    :cond_0
    const-string v1, "Mms/compose"

    const-string v2, "Bad cursor."

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 608
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
    .line 2338
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2340
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2349
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
    .line 5051
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5052
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

    .line 1194
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/mms/ui/MessageListItem;

    .line 1195
    if-nez p0, :cond_0

    move-object v0, v4

    .line 1242
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1211
    if-eqz v0, :cond_3

    .line 1212
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1213
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1214
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    move v5, v2

    move-object v2, v1

    move v1, v5

    .line 1217
    :goto_1
    if-ne v1, v3, :cond_2

    .line 1219
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1220
    if-eqz p0, :cond_2

    .line 1221
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1222
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1223
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    move-object p0, v0

    move v0, v2

    .line 1229
    :goto_2
    if-eq v1, v0, :cond_1

    .line 1230
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1231
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1233
    check-cast p0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    .line 1236
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1237
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 1242
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

    .line 2264
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2265
    if-nez p2, :cond_0

    .line 2266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2271
    :goto_0
    const/4 v1, 0x2

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2272
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

    .line 2271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2269
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

    .line 2274
    :cond_1
    return-object v1
.end method

.method private getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    .line 3715
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 3269
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 3270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3271
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
    .line 4515
    if-nez p1, :cond_1

    .line 4518
    const v0, 0x7f09019a

    if-eq p2, v0, :cond_0

    .line 4519
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 4520
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 4571
    :cond_0
    :goto_0
    return-void

    .line 4524
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
    .line 4602
    invoke-static {p0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4604
    packed-switch v0, :pswitch_data_0

    .line 4630
    :cond_0
    :goto_0
    return-void

    .line 4608
    :pswitch_0
    const v0, 0x7f090108

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4609
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

    .line 4611
    :cond_1
    const v0, 0x7f090109

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4612
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

    .line 4614
    :cond_2
    const v0, 0x7f090107

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4615
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

    .line 4617
    :cond_3
    const v0, 0x7f09019a

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4618
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

    .line 4624
    :pswitch_1
    const v0, 0x7f0901c9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4604
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

    .line 4737
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4741
    const-string v0, "forwarded_message"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 4763
    :goto_0
    return v0

    .line 4745
    :cond_0
    const-string v0, "msg_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4747
    const-string v2, "Mms:app"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4748
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

    .line 4751
    :cond_1
    if-eqz v0, :cond_2

    .line 4753
    const-string v2, "checkCRMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4755
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, "subject"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4761
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v0, v5

    .line 4763
    goto :goto_0

    .line 4757
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

    .line 4782
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4783
    if-nez v1, :cond_0

    move v1, v8

    .line 4913
    :goto_0
    return v1

    .line 4786
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4788
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4789
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 4790
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4791
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 4792
    const-string v3, "vcard"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4793
    if-eqz v3, :cond_1

    const-string v4, "vcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4795
    const-string v3, "content://com.android.contacts/contacts/as_vcard/"

    .line 4796
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x37

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4797
    const-string v4, "%3A"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4798
    array-length v4, v1

    .line 4799
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getImportMediaCount(I)I

    move-result v4

    move v5, v8

    .line 4800
    :goto_1
    if-ge v5, v4, :cond_2

    .line 4802
    aget-object v6, v1, v5

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 4803
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

    .line 4800
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4806
    :cond_1
    invoke-direct {p0, v2, v1, v8, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    :cond_2
    move v1, v9

    .line 4808
    goto :goto_0

    .line 4809
    :cond_3
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4810
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    move v1, v9

    .line 4811
    goto/16 :goto_0

    .line 4813
    :cond_4
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4816
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 4817
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4818
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 4820
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4821
    add-int v4, v2, v1

    if-le v4, v5, :cond_b

    .line 4822
    sub-int v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4824
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

    .line 4847
    :goto_3
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move v5, v8

    move v6, v8

    .line 4854
    :goto_4
    if-ge v5, v4, :cond_8

    .line 4855
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 4857
    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 4858
    if-eqz v2, :cond_7

    .line 4859
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4860
    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v2, v1, v9, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    move v1, v6

    .line 4854
    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v1

    goto :goto_4

    :cond_5
    move v1, v8

    .line 4818
    goto :goto_2

    .line 4862
    :cond_6
    if-nez v6, :cond_a

    .line 4864
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4865
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4866
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v9

    .line 4867
    goto :goto_5

    .line 4869
    :cond_7
    if-nez v2, :cond_a

    .line 4870
    if-nez v6, :cond_a

    .line 4872
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4873
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4874
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v9

    goto :goto_5

    :cond_8
    move v1, v9

    .line 4911
    goto/16 :goto_0

    :cond_9
    move v1, v8

    .line 4913
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
    .line 6330
    const/4 v1, 0x0

    .line 6333
    .local v1, result:Z
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 6340
    :cond_0
    :goto_0
    return v1

    .line 6334
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

    .line 6335
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

    .line 6336
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 6337
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

    .line 1347
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

    .line 1351
    if-eqz v0, :cond_2

    .line 1353
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1354
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1360
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1363
    :goto_0
    return v0

    .line 1360
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 1363
    goto :goto_0

    .line 1360
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private hideOrShowTopPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2669
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 2670
    .local v0, anySubViewsVisible:Z
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2671
    return-void

    .end local v0           #anySubViewsVisible:Z
    :cond_1
    move v0, v2

    .line 2669
    goto :goto_0

    .line 2670
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

    .line 3275
    if-eqz p1, :cond_0

    .line 3276
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3277
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3278
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3280
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3281
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 3282
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3289
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    .line 3290
    return-void
.end method

.method private hideSipExplict()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6770
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 6771
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

    .line 6774
    :cond_2
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-eqz v0, :cond_3

    .line 6775
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 6776
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6780
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

    .line 6269
    if-eqz p1, :cond_0

    .line 6270
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6271
    invoke-static {v0, v3, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6274
    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    .line 6275
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 6326
    :goto_0
    return-void

    .line 6281
    :cond_0
    const-string v0, "thread_id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 6282
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 6283
    invoke-static {p0, v0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6323
    :cond_1
    :goto_1
    const-string v0, "exit_on_sent"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    .line 6324
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "sms_body"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 6325
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "subject"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 6285
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 6290
    if-eqz v0, :cond_7

    .line 6291
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 6294
    :goto_2
    if-eqz v1, :cond_6

    const-string v2, "smsto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6296
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isSmsto:Z

    .line 6297
    const-string v1, "sendto"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6300
    :goto_3
    if-eqz v1, :cond_3

    .line 6301
    invoke-static {p0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 6303
    :cond_3
    if-eqz v0, :cond_4

    .line 6305
    invoke-static {p0, v0, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6308
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

    .line 6309
    invoke-virtual {p0, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto :goto_1

    .line 6313
    :cond_4
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6315
    invoke-static {v0, v3, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 6318
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
    .line 6348
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-nez v0, :cond_0

    .line 6372
    :goto_0
    return-void

    .line 6355
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

    .line 6361
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 6371
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    goto :goto_0

    .line 6363
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

    .line 6366
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

    .line 5965
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 5992
    :goto_0
    return-void

    .line 5969
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5970
    if-nez v0, :cond_1

    move-object v5, v2

    .line 5976
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 5979
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 5980
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 5981
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5982
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 5983
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 5984
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5985
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$35;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$35;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 5970
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

    .line 2383
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    :goto_0
    return-void

    .line 2389
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 2390
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 2392
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2393
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    .line 2395
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 2396
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    .line 2399
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_3

    .line 2400
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2403
    :cond_3
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2404
    if-eqz v0, :cond_5

    .line 2405
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AddRecipientButtonEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    .line 2414
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2415
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setVisibility(I)V

    .line 2420
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setHandler(Landroid/os/Handler;)V

    .line 2421
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AddRecipientButtonEditor;->CreateAddRecipientButton()V

    .line 2423
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2424
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsToField:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 2426
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_4

    .line 2427
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 2431
    :cond_4
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 2432
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2434
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2436
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2438
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditorListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2440
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 2443
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x1f40

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 2444
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 2446
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$11;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2465
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$12;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2503
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    .line 2504
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2407
    :cond_5
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AddRecipientButtonEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    goto/16 :goto_1

    .line 2417
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButton:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 5279
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 5280
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5281
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    .line 5282
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    .line 5283
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5284
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5285
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    .line 5286
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    .line 5287
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    .line 5289
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 5290
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5291
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    .line 5292
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5293
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    .line 5294
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setHandler(Landroid/os/Handler;)V

    .line 5295
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5296
    if-eqz v0, :cond_0

    .line 5297
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContactHeader;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    .line 5298
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->init()V

    .line 5300
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$32;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$32;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5343
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 5344
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    .line 5346
    :cond_1
    return-void
.end method

.method private initializeContactInfo()V
    .locals 3

    .prologue
    .line 6632
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6634
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6635
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updatePresence(Lcom/android/mms/data/Contact;)V

    .line 6639
    :goto_0
    return-void

    .line 6637
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
    .line 6698
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 6699
    .local v0, a:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 6700
    .local v1, b:I
    const/4 v4, 0x0

    .line 6701
    .local v4, length:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 6704
    .local v2, before:Landroid/text/Editable;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6706
    .local v3, buf:Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 6707
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6708
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 6709
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6711
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_0

    .line 6712
    const/16 v4, 0x3e8

    .line 6716
    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 6717
    return-void

    .line 6714
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
    .line 4989
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

    .line 4995
    :cond_0
    const/4 v0, 0x1

    .line 4997
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBottomPanelVisible()Z
    .locals 1

    .prologue
    .line 3307
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
    .line 1369
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1370
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 1374
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
    .line 6046
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 6051
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
    .line 6057
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 6062
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

    .line 3406
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 3407
    .local v2, recipients:Lcom/android/mms/data/ContactList;
    const/4 v1, 0x0

    .line 3409
    .local v1, parsedCallNumber:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 3410
    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 3412
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3413
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3414
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 3423
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0       #number:Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 3418
    goto :goto_0

    .line 3423
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
    .line 3293
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
    .line 3297
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
    .line 3301
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
    .line 6720
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
    .line 5995
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5996
    const-string v0, "Mms/compose"

    const-string v1, "loadDraft() called with non-empty working message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6006
    :goto_0
    return-void

    .line 6000
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6001
    const-string v0, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6004
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
    .line 2972
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    .line 2973
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initializeContactInfo()V

    .line 2974
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 2975
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 2976
    return-void
.end method

.method private lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2008
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2013
    :goto_0
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2015
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2016
    const-string v2, "locked"

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2018
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$8;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2024
    return-void

    .line 2011
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2016
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 7
    .parameter "logMsg"

    .prologue
    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 395
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 396
    .local v3, tid:J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 397
    .local v2, stack:[Ljava/lang/StackTraceElement;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 399
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

    .line 400
    const-string v5, "Mms/compose"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method private noItemSelectedDialog()V
    .locals 3

    .prologue
    .line 4038
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

    .line 4044
    return-void
.end method

.method private onKeyboardStateChanged(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3157
    if-eqz p1, :cond_2

    .line 3158
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 3161
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3162
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3164
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3165
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 3176
    :goto_0
    return-void

    .line 3167
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3

    .line 3168
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    .line 3170
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 3171
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3173
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3174
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

    .line 3443
    .line 3445
    const/4 v0, 0x0

    .line 3447
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3448
    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 3449
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3451
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p1

    .line 3455
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3456
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3458
    const/4 v0, 0x1

    const-string v2, "tel:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 3459
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3461
    if-ltz v0, :cond_2

    .line 3462
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3463
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

    .line 3469
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p0

    .line 3466
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

    .line 4689
    if-nez p1, :cond_1

    .line 4703
    :cond_0
    return-void

    .line 4691
    :cond_1
    const/4 v2, 0x0

    .line 4692
    .local v2, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4693
    .local v1, count:I
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getImportMediaCount(I)I

    move-result v3

    .line 4694
    .local v3, importCount:I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 4695
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4697
    .local v0, attachUri:Landroid/net/Uri;
    const/16 v4, 0x1b

    if-ne p2, v4, :cond_2

    .line 4698
    const/4 v4, 0x1

    invoke-direct {p0, v0, v5, v4, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    .line 4694
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4700
    :cond_2
    invoke-direct {p0, v0, v5, v5, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    goto :goto_1
.end method

.method public static raiseThreadPriority()V
    .locals 2

    .prologue
    const/16 v1, -0x13

    .line 6809
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mStarted:Z

    if-nez v0, :cond_0

    .line 6810
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mStarted:Z

    .line 6811
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->defaultThreadPriority:I

    if-eq v0, v1, :cond_0

    .line 6812
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6814
    :cond_0
    return-void
.end method

.method private recipientCount()I
    .locals 2

    .prologue
    .line 6067
    const/4 v0, 0x0

    .line 6073
    .local v0, recipientCount:I
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6074
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    .line 6078
    :goto_0
    return v0

    .line 6076
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
    .line 6674
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 6675
    return-void
.end method

.method private resendMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1595
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    const-string v0, "Mms/compose"

    const-string v1, "message sending is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const v0, 0x7f0901d8

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1599
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 1609
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 1607
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1628
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1630
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, p0}, Lcom/android/mms/data/WorkingMessage;->isPendingSizeOver(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    .line 1633
    new-instance v3, Lcom/android/mms/transaction/MmsMessageSender;

    iget v4, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v4, v4

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1635
    :try_start_0
    invoke-interface {v3, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1636
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1638
    :catch_0
    move-exception v3

    .line 1639
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

    .line 1612
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 1613
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 1615
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 1617
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    :goto_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1623
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v6, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1624
    return-void

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
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

    .line 622
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    .line 624
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    return-void
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 6133
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6134
    const-string v0, "resetMessage"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6138
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 6141
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 6144
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6150
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6152
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 6154
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6155
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor(Z)V

    .line 6159
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 6160
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    .line 6162
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6164
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetRecipients(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6166
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 6167
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6169
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 6170
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 6171
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setNextFocusDownId(I)V

    .line 6182
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6183
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 6187
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 6189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 6192
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6196
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 6198
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6201
    :cond_2
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 6202
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 6203
    return-void

    .line 6174
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    goto :goto_0

    .line 6179
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetRecipients(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 9
    .parameter "Contacts"

    .prologue
    .line 6206
    new-instance v5, Lcom/android/mms/data/ContactList;

    invoke-direct {v5}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 6210
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

    .line 6211
    .local v1, Contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 6212
    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6213
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 6214
    .local v2, contact:Lcom/android/mms/data/Contact;
    if-eqz v2, :cond_0

    .line 6216
    :try_start_0
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/mms/data/Contact;

    move-object v2, v0

    .line 6217
    invoke-virtual {v2, v6}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 6218
    invoke-virtual {v5, v2}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6219
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 6220
    .local v3, e:Ljava/lang/CloneNotSupportedException;
    const-string v7, "Mms/compose"

    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6226
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
    .line 6817
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 6818
    .local v0, currentThreadPriority:I
    sget v1, Lcom/android/mms/ui/ComposeMessageActivity;->defaultThreadPriority:I

    if-eq v0, v1, :cond_0

    .line 6819
    sget v1, Lcom/android/mms/ui/ComposeMessageActivity;->defaultThreadPriority:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6821
    :cond_0
    return-void
.end method

.method private saveDraft(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x2

    const-string v2, "Mms:app"

    .line 6017
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6043
    :cond_0
    :goto_0
    return-void

    .line 6021
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6022
    const-string v0, "Mms:app"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6023
    const-string v0, "saveDraft: not worth saving, discard WorkingMessage and bail"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6026
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isResizingImage:Z

    if-nez v0, :cond_0

    .line 6027
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6028
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 6033
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6034
    const-string v0, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6037
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 6039
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    if-eqz v0, :cond_0

    .line 6040
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

    .line 6083
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6084
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6086
    const-string v0, "Mms/compose"

    const-string v0, "message sending is disabled"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6087
    const v0, 0x7f0901d8

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6088
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 6130
    :cond_0
    :goto_0
    return-void

    .line 6093
    :cond_1
    if-eqz p1, :cond_2

    .line 6095
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6096
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6098
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

    .line 6102
    :catch_0
    move-exception v0

    .line 6104
    const-string v1, "Mms/compose"

    const-string v1, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6108
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    if-nez v0, :cond_3

    .line 6111
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 6112
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 6113
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 6114
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 6115
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 6118
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 6119
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6124
    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    if-eqz v0, :cond_0

    .line 6125
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    if-nez v0, :cond_5

    .line 6126
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 6128
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0
.end method

.method public static setIsHideExplict(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 6784
    sput-boolean p0, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6785
    return-void
.end method

.method private setSendButtonText(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    .line 3352
    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3363
    return-void
.end method

.method private setTextEditorMaxLines()V
    .locals 3

    .prologue
    .line 6726
    const/16 v0, 0xa

    .line 6727
    .local v0, maxLines:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 6728
    add-int/lit8 v0, v0, -0x1

    .line 6730
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 6731
    add-int/lit8 v0, v0, -0x2

    .line 6735
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 6736
    add-int/lit8 v0, v0, -0x4

    .line 6743
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6744
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 6748
    :goto_1
    return-void

    .line 6737
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

    .line 6739
    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 6746
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

    .line 3891
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3892
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3893
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3928
    :goto_0
    return-void

    .line 3909
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3910
    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3911
    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3914
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    if-nez v1, :cond_1

    .line 3915
    new-instance v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    .line 3919
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$25;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$25;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3926
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showAddtextDialog()V
    .locals 3

    .prologue
    .line 4005
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4007
    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4009
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    .line 4010
    new-instance v1, Lcom/android/mms/ui/AddTextSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    .line 4012
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$26;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$26;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4018
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4019
    return-void
.end method

.method private showAttachListPanel()V
    .locals 2

    .prologue
    .line 4460
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 4461
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

    .line 4463
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4467
    :cond_0
    :goto_0
    return-void

    .line 4465
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showChooseContactDialog()V
    .locals 3

    .prologue
    .line 4022
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4023
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4026
    new-instance v1, Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    .line 4028
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$27;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$27;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4034
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4035
    return-void
.end method

.method private showDeliveryReport(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2295
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2296
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2297
    const-string v1, "message_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2300
    return-void
.end method

.method private showRecentPhonebook()V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleContactPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .local v0, intentContacts:Landroid/content/Intent;
    const-string v1, "Mms/compose"

    const-string v2, "1. Recent : startActivityForResult()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 423
    return-void
.end method

.method private showSipExplict()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6752
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 6753
    :cond_0
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6767
    :cond_1
    :goto_0
    return-void

    .line 6757
    :cond_2
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->isHideExplict:Z

    .line 6758
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 6759
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

    .line 6762
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-nez v0, :cond_1

    .line 6763
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

    .line 6533
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 6534
    sget-object v0, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 6535
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 6537
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 6540
    array-length v4, v1

    .line 6542
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v9

    .line 6543
    :goto_0
    if-ge v5, v4, :cond_2

    move v6, v9

    .line 6547
    :goto_1
    if-ge v6, v5, :cond_4

    .line 6548
    aget v7, v0, v5

    aget v8, v0, v6

    if-ne v7, v8, :cond_1

    move v6, v10

    .line 6553
    :goto_2
    if-nez v6, :cond_0

    .line 6554
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 6556
    const-string v7, "icon"

    aget v7, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6557
    const-string v7, "name"

    aget-object v7, v1, v5

    invoke-virtual {v6, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6558
    const-string v7, "text"

    aget-object v8, v3, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6560
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6543
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6547
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6564
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030033

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

    .line 6570
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$37;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$37;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6580
    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 6582
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6584
    const v2, 0x7f09011c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6586
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6587
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$38;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$38;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6621
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 6624
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6625
    return-void

    :cond_4
    move v6, v9

    goto :goto_2

    .line 6564
    nop

    :array_0
    .array-data 0x4
        0xaat 0x0t 0x8t 0x7ft
        0xabt 0x0t 0x8t 0x7ft
        0xact 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f08001f

    const/4 v3, 0x0

    const v2, 0x7f08001e

    .line 2591
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
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

    .line 2595
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 2598
    if-nez p1, :cond_1

    .line 2666
    :goto_0
    return-void

    .line 2602
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2603
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2606
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2608
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$14;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$14;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2616
    if-eqz p1, :cond_c

    .line 2617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2623
    :goto_2
    if-nez p1, :cond_3

    .line 2624
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isTextEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2625
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2636
    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 2637
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2644
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2645
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_10

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2646
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2647
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2648
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2649
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2650
    :cond_6
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2651
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2653
    :cond_7
    if-eqz p1, :cond_a

    .line 2655
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2656
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2657
    :cond_8
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2658
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2659
    :cond_9
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2660
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2664
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 2665
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    goto/16 :goto_0

    .line 2606
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2619
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    .line 2626
    :cond_d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2627
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_3

    .line 2629
    :cond_e
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 2630
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_3

    .line 2640
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_4

    .line 2645
    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_5
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 5254
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

    .line 5255
    :cond_0
    const v0, 0x7f0901c1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 5256
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5259
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

    .line 5725
    const-string v2, "/sdcard/download/"

    .line 5726
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v1, v5

    .line 5730
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 5739
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

    .line 5740
    const/4 v1, 0x1

    .line 5745
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

    .line 5749
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    .line 5757
    :cond_1
    :goto_2
    return-void

    .line 5730
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5752
    :cond_3
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$RawAttachmentsExportThread;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 5753
    if-eqz v0, :cond_1

    .line 5754
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

    .line 5943
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 5945
    if-nez v3, :cond_0

    .line 5962
    :goto_0
    return-void

    .line 5948
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5949
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

    .line 5953
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 5956
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

    .line 5959
    :catch_0
    move-exception v0

    .line 5960
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private toastConvertInfo(Z)V
    .locals 2
    .parameter "toMms"

    .prologue
    .line 859
    if-eqz p1, :cond_0

    const v1, 0x7f090063

    move v0, v1

    .line 861
    .local v0, resId:I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 862
    return-void

    .line 859
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

    .line 637
    const/4 v0, 0x0

    .line 640
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 641
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 643
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

    .line 644
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 646
    :cond_0
    if-eqz v2, :cond_1

    .line 647
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 656
    :cond_1
    :goto_1
    const-string v2, "Mms/compose"

    const-string v3, "tempRecipients : xxxxxxxx havaEmailAliasRecipients : xxxxxxxx"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 662
    :cond_3
    if-eqz v0, :cond_4

    .line 663
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

    .line 664
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 665
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

    .line 671
    :goto_2
    const/16 v1, 0x3e8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    .line 673
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_5

    .line 674
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    :goto_3
    return-void

    :cond_4
    move-object v0, p1

    .line 668
    goto :goto_2

    .line 690
    :cond_5
    if-nez p5, :cond_14

    .line 691
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 692
    if-eqz v1, :cond_14

    move v1, v7

    .line 696
    :goto_4
    if-ne v1, v6, :cond_8

    .line 697
    invoke-static {v0, v5, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    .line 710
    :goto_5
    aget v1, v0, v5

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    .line 711
    aget v0, v0, v7

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    .line 714
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->checkIfAddressContainsEmailToMms(Ljava/util/List;)V

    .line 718
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 720
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    const/16 v1, 0x98

    if-ge v0, v1, :cond_b

    .line 721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    move v0, v5

    .line 737
    :goto_7
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    .line 739
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

    .line 743
    :goto_8
    if-nez v0, :cond_12

    .line 745
    if-eqz v2, :cond_10

    .line 747
    if-eqz v1, :cond_f

    .line 748
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    :goto_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 698
    :cond_8
    if-nez v1, :cond_9

    .line 699
    invoke-static {v0, v5, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    goto :goto_5

    .line 701
    :cond_9
    invoke-static {v0, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    goto :goto_5

    .line 714
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 722
    :cond_b
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRemainingInCurrentMessage:I

    const/16 v1, 0x98

    if-ne v0, v1, :cond_e

    .line 724
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    :cond_c
    move v0, v6

    .line 726
    goto :goto_7

    .line 730
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    :cond_e
    move v0, v5

    goto :goto_7

    .line 751
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

    .line 758
    :cond_10
    if-eqz v1, :cond_11

    .line 759
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRemainChar:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    :goto_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 761
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

    .line 768
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

    .line 769
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
    .line 6629
    return-void
.end method

.method private updateRecipientsCounts(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1060
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

    .line 1061
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsCounter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSendButtonState()V
    .locals 3

    .prologue
    .line 6231
    const/4 v0, 0x0

    .line 6233
    .local v0, enable:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSendingButton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6237
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6238
    const/4 v0, 0x1

    .line 6246
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->setSendButtonText(Z)V

    .line 6247
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6248
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 6249
    return-void

    .line 6240
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    goto :goto_0

    .line 6242
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_0

    .line 6243
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    goto :goto_0
.end method

.method private updateSendFailedNotification()V
    .locals 4

    .prologue
    .line 2979
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2980
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2991
    :goto_0
    return-void

    .line 2985
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
    .line 6345
    return-void
.end method


# virtual methods
.method public alertInvalidRecipientsPopup(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 985
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

    .line 989
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

    .line 4919
    const-string v6, ""

    .line 4921
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4922
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4924
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

    .line 4928
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 4930
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4931
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4932
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

    .line 4957
    :goto_0
    if-eqz v0, :cond_0

    .line 4959
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 4966
    :goto_1
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    .line 4967
    invoke-static {v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4968
    const-string v3, ""

    .line 4970
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4973
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 4974
    if-ltz v3, :cond_6

    .line 4975
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4978
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4979
    if-nez v0, :cond_1

    .line 4985
    :cond_1
    return-object v0

    .line 4935
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

    .line 4937
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 4939
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4940
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4941
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

    .line 4944
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

    .line 4946
    if-eqz v0, :cond_8

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 4948
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4949
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4950
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

    .line 4957
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    if-eqz v1, :cond_4

    .line 4959
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 4962
    :cond_5
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4963
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 4957
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

    .line 2674
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2677
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2680
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2682
    const-string v1, "Mms:app"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2683
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

    .line 2688
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2691
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->undeliveredMessageDialog(J)V

    .line 2693
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 2696
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList()V

    .line 2704
    if-eqz p1, :cond_10

    .line 2705
    const-string v1, "CurLang"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2708
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 2709
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2710
    :cond_2
    if-eqz v1, :cond_a

    .line 2711
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v5

    .line 2714
    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2715
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleForwardedMessage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    .line 2716
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    if-nez v0, :cond_4

    .line 2717
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()V

    .line 2740
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 2743
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    .line 2746
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor(Z)V

    .line 2747
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 2751
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2757
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 2759
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 2760
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 2761
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 2765
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideMedia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2766
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 2770
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

    .line 2771
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 2772
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2776
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2777
    iget v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v5, :cond_d

    move v1, v5

    :goto_4
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 2778
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_e

    move v0, v5

    :goto_5
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 2779
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 2782
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2783
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2784
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 2786
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setNextFocusDownId(I)V

    .line 2792
    :goto_6
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsForwardedMessage:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2795
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 2797
    :cond_8
    return-void

    :cond_9
    move v1, v4

    .line 2711
    goto/16 :goto_1

    :cond_a
    move v1, v4

    .line 2713
    goto/16 :goto_1

    .line 2721
    :cond_b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2722
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$15;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 2754
    :cond_c
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor(Z)V

    goto/16 :goto_3

    :cond_d
    move v1, v4

    .line 2777
    goto :goto_4

    :cond_e
    move v0, v4

    .line 2778
    goto :goto_5

    .line 2790
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
    .line 468
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 470
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 471
    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidRecipients()Z
    .locals 2

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 976
    .local v0, isMms:Z
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const/4 v1, 0x1

    .line 981
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

    .line 4049
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

    .line 4052
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 4055
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

    .line 4068
    :goto_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    .line 4069
    if-nez p3, :cond_3

    .line 4456
    :cond_1
    :goto_1
    return-void

    .line 4072
    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 4073
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

    .line 4077
    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4144
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    .line 4146
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4147
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4148
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4149
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto :goto_1

    .line 4079
    :pswitch_2
    if-eqz p3, :cond_1

    .line 4081
    const/4 v0, 0x0

    .line 4082
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_4

    .line 4083
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4085
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    .line 4086
    if-eqz v1, :cond_1

    .line 4088
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

    .line 4090
    new-instance v2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 4091
    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 4094
    :cond_5
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4095
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 4096
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 4098
    if-eqz v0, :cond_6

    .line 4099
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0, v6}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4104
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideMedia()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4105
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 4108
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 4109
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    goto/16 :goto_1

    .line 4124
    :pswitch_3
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4125
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4128
    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;ZZZ)V

    .line 4130
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4131
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4132
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4133
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4162
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

    .line 4164
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4165
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4166
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4167
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4176
    :pswitch_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;ZZZ)V

    .line 4178
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4179
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4180
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4181
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4194
    :pswitch_6
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4195
    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    .line 4197
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4198
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4200
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4208
    :pswitch_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;ZZZ)V

    .line 4210
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4211
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4212
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4213
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4219
    :pswitch_8
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4220
    if-eqz v0, :cond_1

    .line 4221
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto/16 :goto_1

    .line 4227
    :pswitch_9
    if-eqz p3, :cond_1

    .line 4230
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4231
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4232
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 4234
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4235
    const-string v1, "vcard"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4236
    if-eqz v1, :cond_9

    const-string v2, "vcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4238
    const-string v1, "content://com.android.contacts/contacts/as_vcard/"

    .line 4239
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4240
    const-string v2, "%3A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4241
    array-length v2, v0

    .line 4242
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getImportMediaCount(I)I

    move-result v2

    move v3, v6

    .line 4243
    :goto_2
    if-ge v3, v2, :cond_a

    .line 4245
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4246
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

    .line 4243
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4251
    :cond_9
    invoke-direct {p0, v0, v6, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->addRawMedia(Landroid/net/Uri;ZZI)V

    .line 4254
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4255
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4256
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4257
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4266
    :pswitch_a
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4268
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4269
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4270
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4271
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4277
    :pswitch_b
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4279
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4280
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4281
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 4282
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_1

    .line 4289
    :pswitch_c
    const-string v0, "contact_number"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4290
    if-eqz v0, :cond_1

    .line 4291
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4292
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4293
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_1

    .line 4299
    :pswitch_d
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4302
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4303
    const-string v1, "Mms/compose"

    const-string v2, "REQUEST_PHONE_MULTI selectedNumbers = xxxxxxxx"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    if-eqz v0, :cond_1

    .line 4305
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4306
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4307
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_1

    .line 4313
    :pswitch_e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4320
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4324
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 4339
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4340
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto/16 :goto_1

    .line 4333
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4343
    :pswitch_f
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4350
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4354
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 4369
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4370
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto/16 :goto_1

    .line 4363
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4374
    :pswitch_10
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4381
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4385
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 4400
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4401
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    goto/16 :goto_1

    .line 4394
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 4423
    :pswitch_11
    if-eqz p3, :cond_1

    const-string v0, "empty_thread"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4424
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 4425
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4426
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 4427
    invoke-static {}, Lcom/android/mms/data/Contact;->clearContactsCache()V

    .line 4428
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto/16 :goto_1

    .line 4437
    :pswitch_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 4438
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4440
    if-nez v0, :cond_e

    .line 4441
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4444
    :cond_e
    if-eqz v0, :cond_1

    .line 4445
    invoke-static {v0, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4446
    if-eqz v0, :cond_1

    .line 4447
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_1

    :cond_f
    move v1, v4

    goto/16 :goto_0

    .line 4077
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
    .line 3317
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$19;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3325
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 3395
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$23;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3401
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5106
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 5107
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5109
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5110
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 5112
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3133
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3135
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

    .line 3138
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v4, :cond_2

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 3139
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move v0, v4

    .line 3140
    .local v0, isLandscape:Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eq v1, v0, :cond_1

    .line 3141
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 3143
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3144
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/RecipientsEditor;->ensureImeVisible(Z)V

    .line 3149
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 3151
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 3152
    return-void

    .end local v0           #isLandscape:Z
    :cond_2
    move v1, v5

    .line 3138
    goto :goto_0

    :cond_3
    move v0, v5

    .line 3139
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2537
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->raiseThreadPriority()V

    .line 2538
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2542
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    .line 2543
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

    .line 2546
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2547
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2548
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->displayDensity:F

    .line 2550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->requestWindowFeature(I)Z

    .line 2552
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setContentView(I)V

    .line 2553
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    .line 2556
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V

    .line 2558
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 2559
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 2561
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;)V

    .line 2563
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2571
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2572
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2574
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->resetThreadPriority()V

    .line 2576
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2577
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/SearchManager;

    if-eqz v1, :cond_1

    .line 2578
    check-cast v0, Landroid/app/SearchManager;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$13;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 2587
    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    .line 2588
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 5761
    packed-switch p1, :pswitch_data_0

    .line 5771
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5763
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

    .line 5768
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 5761
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 3109
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3110
    const-string v0, "onDestroy: save draft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3113
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 3114
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 3118
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsContaminatedMsg:Z

    if-nez v0, :cond_2

    .line 3119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3126
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3129
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

    .line 5116
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 5117
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    .line 5119
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 5120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5121
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 5168
    :goto_0
    return v0

    .line 5135
    :cond_0
    if-eqz p3, :cond_1

    move v0, v2

    .line 5145
    goto :goto_0

    .line 5150
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-ne v0, p1, :cond_4

    .line 5152
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    move v0, v2

    .line 5153
    goto :goto_0

    .line 5155
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    :goto_1
    move v0, v1

    .line 5168
    goto :goto_0

    .line 5159
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 5160
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_5

    .line 5161
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5164
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5165
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

    .line 3192
    sparse-switch p1, :sswitch_data_0

    .line 3225
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 3194
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3197
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3203
    if-eqz v2, :cond_0

    .line 3204
    const/16 v1, 0x15

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v6, v7

    .line 3205
    :goto_1
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;Z)V

    .line 3209
    invoke-direct {p0, v1, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v1, v7

    .line 3210
    goto :goto_0

    .line 3198
    :catch_0
    move-exception v1

    .line 3199
    const-string v2, "Mms/compose"

    const-string v3, "Unexpected ClassCastException."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3200
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v6, v5

    .line 3204
    goto :goto_1

    .line 3216
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3217
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    move v1, v7

    .line 3218
    goto :goto_0

    :sswitch_2
    move v1, v7

    .line 3222
    goto :goto_0

    .line 3192
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
    .line 3230
    packed-switch p1, :pswitch_data_0

    .line 3239
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3232
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$18;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 3237
    const/4 v0, 0x1

    goto :goto_0

    .line 3230
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMaxPendingMessagesReached()V
    .locals 1

    .prologue
    .line 3384
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3386
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$22;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3392
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3379
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    .line 3381
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

    .line 2801
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2803
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->closeContextMenu()V

    .line 2805
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    if-eqz v0, :cond_0

    .line 2806
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2807
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 2810
    iput-boolean v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 2814
    const-string v0, "thread_id"

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2815
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2819
    if-eqz v2, :cond_d

    .line 2820
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 2824
    :goto_0
    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    .line 2825
    invoke-static {p0, v0, v1, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    move-object v4, v3

    move v3, v9

    .line 2860
    :goto_1
    const-string v5, "Mms:app"

    invoke-static {v5, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2861
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

    .line 2862
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

    .line 2865
    :cond_1
    if-eqz v4, :cond_9

    .line 2868
    invoke-virtual {v4, v10}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2876
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

    .line 2880
    :goto_2
    if-eqz v0, :cond_6

    .line 2882
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2883
    const-string v0, "onNewIntent: same conversation"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2897
    :goto_3
    return-void

    .line 2827
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 2831
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v10}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients(Z)V

    .line 2832
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v2}, Lcom/android/mms/data/Conversation;->sameRecipient(Landroid/net/Uri;)Z

    move-result v4

    .line 2834
    :goto_4
    if-nez v4, :cond_b

    .line 2839
    if-eqz v3, :cond_a

    const-string v5, "smsto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2841
    iput-boolean v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isSmsto:Z

    .line 2842
    const-string v3, "sendto"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2845
    :goto_5
    if-eqz v3, :cond_3

    .line 2846
    invoke-static {p0, v3, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v3

    move v13, v4

    move-object v4, v3

    move v3, v13

    goto/16 :goto_1

    .line 2848
    :cond_3
    invoke-static {p0, v2, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 2851
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

    .line 2853
    invoke-virtual {p0, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    :cond_4
    move v13, v4

    move-object v4, v3

    move v3, v13

    goto/16 :goto_1

    :cond_5
    move v0, v9

    .line 2876
    goto :goto_2

    .line 2885
    :cond_6
    const-string v0, "Mms:app"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2886
    const-string v0, "onNewIntent: different conversation, initialize..."

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2888
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_8

    .line 2889
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2893
    :goto_6
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;)V

    .line 2894
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    goto/16 :goto_3

    .line 2891
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

    .line 3611
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3706
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 3613
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 3614
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3615
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3617
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->isSipVisible:Z

    if-nez v0, :cond_0

    .line 3618
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0

    .line 3623
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 3624
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 3629
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 3632
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3634
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideSipExplict()V

    .line 3635
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3636
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0

    .line 3645
    :pswitch_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3646
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 3650
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onSearchRequested()Z

    goto :goto_0

    .line 3655
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3660
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3663
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3664
    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3667
    :pswitch_8
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$24;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$24;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3674
    :pswitch_9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dialRecipient()V

    goto :goto_0

    .line 3677
    :pswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmileyDialog()V

    goto :goto_0

    .line 3681
    :pswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 3682
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3683
    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 3684
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3685
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3686
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3693
    :pswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddtextDialog()V

    goto/16 :goto_0

    .line 3696
    :pswitch_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 3697
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3702
    :pswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showChooseContactDialog()V

    goto/16 :goto_0

    .line 3611
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

    .line 3069
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3077
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3079
    if-eqz v0, :cond_0

    .line 3080
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3082
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 3083
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    if-eqz v0, :cond_1

    .line 3084
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3085
    :cond_1
    return-void
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3373
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f020040

    const v5, 0x20200df

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3474
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 3476
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 3477
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3481
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3482
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3483
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3484
    const v0, 0x7f0900d8

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    move v0, v3

    .line 3566
    :goto_1
    return v0

    .line 3488
    :cond_1
    const v0, 0x7f0900d9

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 3498
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3499
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3500
    const/16 v0, 0xc

    const v1, 0x7f09007d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3504
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3505
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3506
    const v0, 0x7f090045

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3515
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3516
    const/4 v0, 0x3

    const v1, 0x7f090044

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020035

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3527
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3528
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3530
    const/16 v0, 0x9

    const v1, 0x7f090188

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3534
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

    .line 3535
    :cond_7
    const/16 v0, 0x1a

    const v1, 0x7f09011c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3539
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 3543
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3544
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 3545
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 3546
    const v0, 0x7f0900d8

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3555
    :cond_9
    :goto_3
    const/4 v0, 0x4

    const v1, 0x7f090047

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3557
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3558
    const/4 v0, 0x6

    const v1, 0x7f090009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3565
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    move v0, v3

    .line 3566
    goto/16 :goto_1

    .line 3508
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3510
    const/16 v0, 0xa

    const v1, 0x7f090189

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3550
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
    .line 3331
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$20;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$20;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3348
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 2901
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2903
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2910
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 2915
    :cond_0
    :goto_0
    return-void

    .line 2911
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2912
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "Mms/compose"

    .line 3011
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3018
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 3021
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3022
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 3023
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 3032
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 3036
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    .line 3037
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

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextEditorMaxLines()V

    .line 3043
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSipExplict()V

    .line 3045
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->changeIMEOption()V

    .line 3047
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 3051
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    .line 3052
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->checkValidMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3053
    const-string v0, "Mms/compose"

    const-string v0, "onResume: contaminated message : finish activity"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsContaminatedMsg:Z

    .line 3055
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 3058
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 3060
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    if-eqz v0, :cond_2

    .line 3061
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->reloadAttachement()V

    .line 3062
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 3063
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    .line 3065
    :cond_2
    return-void

    .line 3026
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 3028
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3029
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 2995
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2997
    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 3000
    const-string v0, "CurLang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    if-eqz v0, :cond_0

    .line 3003
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3006
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mNeedUpdate:Z

    .line 3007
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2919
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2923
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 2925
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2927
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    .line 2928
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initFocus()V

    .line 2931
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2934
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2935
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientTokenizer(Landroid/content/Context;)Z

    .line 2937
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$16;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$16;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2950
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 2951
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 2952
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2953
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 2956
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2957
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2960
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v1, :cond_2

    .line 2961
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2962
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 2965
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 2966
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2969
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 3089
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3092
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 3093
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->onSaveCheckDraftInfo()V

    .line 3097
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 3099
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 3100
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3103
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3104
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 6643
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$39;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$39;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6667
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3180
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 3181
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 3185
    if-eqz p1, :cond_0

    .line 3186
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 3188
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

    .line 5562
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 5563
    if-nez v0, :cond_0

    .line 5639
    :goto_0
    return-void

    .line 5567
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    .line 5568
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v8

    .line 5584
    :goto_1
    if-ge v3, v1, :cond_3

    .line 5585
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 5586
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 5587
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5589
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

    .line 5584
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5594
    :cond_2
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5597
    invoke-direct {p0, v4, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;

    move-result-object v6

    .line 5600
    :try_start_0
    new-instance v7, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v7, p0, v5, v6, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 5605
    :goto_3
    if-eqz v4, :cond_1

    .line 5606
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 5601
    :catch_0
    move-exception v4

    .line 5603
    invoke-virtual {v4}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v4, v10

    goto :goto_3

    .line 5610
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 5611
    const v0, 0x7f09018e

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5614
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 5616
    invoke-direct {p0, v2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    .line 5619
    :cond_5
    new-instance v6, Lcom/android/mms/ui/AttachmentListAdapter;

    const v0, 0x7f030001

    invoke-direct {v6, p0, v0, v2}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 5620
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5621
    const v0, 0x7f09018c

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5622
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5623
    if-eqz p2, :cond_6

    .line 5624
    const v8, 0x7f090136

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;

    move-object v1, p0

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5628
    :goto_4
    const v0, 0x7f090081

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$AttachCancelListener;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity$AttachCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5629
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$34;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$34;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5634
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5635
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5637
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 5626
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
    .line 4634
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4636
    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4637
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4638
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4639
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4640
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4641
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4642
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 851
    if-ltz p2, :cond_0

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 855
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 856
    return-void
.end method

.method public startActivityInActivity(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 1343
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1344
    return-void
.end method

.method undeliveredMessageDialog(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 5923
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5926
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 5927
    const v1, 0x7f09001f

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 5934
    :goto_0
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5936
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 5937
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 5938
    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 5939
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5940
    return-void

    .line 5931
    :cond_0
    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method
