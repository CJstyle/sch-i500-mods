.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field private static final CHECK_PROJECTION:[Ljava/lang/String;

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final SMS_BODY_PROJECTION:[Ljava/lang/String;

.field public static mForceMmsState:Z

.field private static sMmsEnabled:Z


# instance fields
.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field private mDraftSaveTime:J

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field private mRecipeints:Ljava/lang/String;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mWorkingRecipients:Lcom/android/mms/data/ContactList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "_id"

    .line 146
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 152
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "m_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 458
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 988
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->CHECK_PROJECTION:[Ljava/lang/String;

    .line 1751
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v3

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 1908
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const-string v3, ""

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, ""

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mRecipeints:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    .line 205
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    .line 206
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 207
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 208
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 209
    const-string v0, ""

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private appendMedia(ILandroid/net/Uri;Z)V
    .locals 12
    .parameter "type"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 707
    if-nez p1, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const/4 v1, 0x1

    .line 717
    .local v1, addNewSlide:Z
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-ne v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v6

    if-nez v6, :cond_2

    .line 718
    const/4 v1, 0x0

    .line 721
    :cond_2
    if-ne p1, v9, :cond_3

    .line 722
    const/4 v1, 0x0

    .line 724
    :cond_3
    if-eqz v1, :cond_4

    .line 725
    new-instance v5, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v5, v6, v7}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 726
    .local v5, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v5}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 731
    .end local v5           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_4
    const/4 v2, 0x0

    .line 732
    .local v2, media:Lcom/android/mms/model/MediaModel;
    const/4 v3, 0x0

    .line 733
    .local v3, rawMedia:Lcom/android/mms/model/AttachmentModel;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 734
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-ne p1, v8, :cond_8

    .line 735
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v2, v6, p2, v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 737
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_7

    .line 738
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 742
    :goto_1
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 769
    :goto_2
    if-eq p1, v9, :cond_e

    .line 770
    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 777
    :goto_3
    if-eq p1, v10, :cond_5

    if-ne p1, v11, :cond_6

    .line 778
    :cond_5
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 780
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_0

    .line 740
    :cond_7
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    goto :goto_1

    .line 744
    :cond_8
    if-ne p1, v10, :cond_a

    .line 745
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v2, v6, p2, v7}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 747
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_9

    .line 748
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    goto :goto_2

    .line 750
    :cond_9
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto :goto_2

    .line 753
    :cond_a
    if-ne p1, v11, :cond_c

    .line 754
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 756
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_b

    .line 757
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    goto :goto_2

    .line 759
    :cond_b
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_2

    .line 762
    :cond_c
    if-ne p1, v9, :cond_d

    .line 763
    new-instance v3, Lcom/android/mms/model/AttachmentModel;

    .end local v3           #rawMedia:Lcom/android/mms/model/AttachmentModel;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, p2, p3}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .restart local v3       #rawMedia:Lcom/android/mms/model/AttachmentModel;
    goto :goto_2

    .line 765
    :cond_d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeMedia type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 772
    :cond_e
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v3}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto/16 :goto_3
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 2017
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    const-string v0, "asyncDelete %s where %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2020
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2025
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(J)V
    .locals 3
    .parameter

    .prologue
    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2075
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2076
    return-void
.end method

.method private asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter

    .prologue
    .line 2060
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2061
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2062
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2065
    :cond_0
    return-void
.end method

.method private asyncDeleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 2038
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2039
    const-string v0, "asyncDeleteMmsMessage %s where %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2041
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2057
    return-void
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1827
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    const-string v0, "asyncUpdateDraftMmsMessage conv=%s mMessageUri=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1832
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1834
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1849
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 2
    .parameter "conv"
    .parameter "contents"

    .prologue
    .line 1985
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1990
    return-void
.end method

.method private changeMedia(ILandroid/net/Uri;Z)V
    .locals 9
    .parameter "type"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x5

    .line 625
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 626
    :cond_0
    const-string v4, "Mms"

    const-string v5, "[WorkingMessage] changeMedia: no slides!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 630
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v1, 0x0

    .line 631
    .local v1, media:Lcom/android/mms/model/MediaModel;
    const/4 v2, 0x0

    .line 634
    .local v2, rawMedia:Lcom/android/mms/model/AttachmentModel;
    if-nez p1, :cond_3

    .line 636
    if-nez p2, :cond_1

    .line 637
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 638
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 639
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto :goto_0

    .line 645
    :cond_3
    const/4 v4, 0x1

    if-ne p1, v4, :cond_7

    .line 646
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 648
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_4

    .line 649
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 651
    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 652
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 680
    :goto_1
    if-eq p1, v6, :cond_5

    .line 682
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 683
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 684
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 688
    :cond_5
    if-eq p1, v6, :cond_d

    .line 689
    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 696
    :goto_2
    if-eq p1, v7, :cond_6

    if-ne p1, v8, :cond_1

    .line 697
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    .line 654
    :cond_7
    if-ne p1, v7, :cond_9

    .line 655
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 657
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_8

    .line 658
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 660
    :cond_8
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto :goto_1

    .line 662
    :cond_9
    if-ne p1, v8, :cond_b

    .line 663
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 665
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_a

    .line 666
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 668
    :cond_a
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_1

    .line 672
    :cond_b
    if-ne p1, v6, :cond_c

    .line 673
    new-instance v2, Lcom/android/mms/model/AttachmentModel;

    .end local v2           #rawMedia:Lcom/android/mms/model/AttachmentModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p2, p3}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .restart local v2       #rawMedia:Lcom/android/mms/model/AttachmentModel;
    goto :goto_1

    .line 675
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeMedia type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 691
    :cond_d
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto :goto_2
.end method

.method private clearConversation(Lcom/android/mms/data/Conversation;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1962
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1975
    invoke-virtual {p1, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1976
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1977
    const-string v0, "readDraftSmsMessage calling clearThreadId"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1978
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1982
    :cond_0
    return-void
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 4
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"

    .prologue
    .line 1816
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1817
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1818
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 1819
    .local v2, res:Landroid/net/Uri;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1822
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #res:Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 1821
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1822
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "activity"

    .prologue
    .line 217
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 218
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .parameter

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2071
    return-void
.end method

.method private ensureSlideshow()V
    .locals 3

    .prologue
    .line 608
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 617
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 613
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 614
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 616
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method private getMmsDraftDate()J
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 993
    const-wide/16 v8, 0x0

    .line 994
    .local v8, retDate:J
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->CHECK_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 998
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1004
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 1005
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1010
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    return-wide v8

    .line 1001
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1005
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 8
    .parameter "activity"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 229
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const-string v3, "load: moving %s to drafts"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_0
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 240
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_1
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 241
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v1, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 245
    .end local v1           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v3

    .line 234
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 235
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Can\'t move %s to drafts"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v7

    .line 236
    goto :goto_0

    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v1       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_2
    move-object v3, v7

    .line 245
    goto :goto_0
.end method

.method public static load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;
    .locals 8
    .parameter "activity"
    .parameter "uri"
    .parameter "checkCRMode"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 253
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const-string v3, "load: moving %s to drafts"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 264
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_1
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 265
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 269
    .end local v1           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v3

    .line 258
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 259
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Can\'t move %s to drafts"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v7

    .line 260
    goto :goto_0

    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v1       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_2
    move-object v3, v7

    .line 269
    goto :goto_0
.end method

.method public static loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2
    .parameter "activity"
    .parameter "conv"

    .prologue
    .line 371
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 372
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 375
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 8
    .parameter "conv"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 380
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "loadFromConversation %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 383
    .local v1, threadId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1

    move v4, v6

    .line 410
    :goto_0
    return v4

    .line 388
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 389
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v7

    .line 390
    goto :goto_0

    .line 394
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    .line 396
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_4

    .line 397
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v3}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_3
    move v4, v7

    .line 406
    goto :goto_0

    :cond_4
    move v4, v6

    .line 410
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "loadFromUri %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_0
    if-nez p1, :cond_1

    move v1, v3

    .line 330
    :goto_0
    return v1

    .line 318
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 327
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 328
    invoke-virtual {p0, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v1, v4

    .line 330
    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 320
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Couldn\'t load URI %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 321
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;Z)Z
    .locals 8
    .parameter "uri"
    .parameter "checkCRMode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 334
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "loadFromUri %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 337
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 339
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 340
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 341
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 342
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 344
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 346
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v5, 0x7f090053

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_1
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 358
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 359
    invoke-virtual {p0, v6}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v3, v7

    .line 361
    :goto_0
    return v3

    .line 350
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 351
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v6

    .line 352
    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 7
    .parameter "conv"
    .parameter "subject"

    .prologue
    .line 1796
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, dests:[Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1799
    .local v2, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1800
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 1801
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1804
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1805
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1808
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1810
    return-object v2
.end method

.method private markMmsMessageWithError(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    .line 1730
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1733
    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1736
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1737
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1738
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1739
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    :goto_0
    return-void

    .line 1742
    :catch_0
    move-exception v0

    .line 1745
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move message to outbox and mark as error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 4
    .parameter "conv"
    .parameter "msgText"

    .prologue
    .line 1545
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1547
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1551
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v1

    .line 1553
    .local v1, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 1557
    .local v0, semiSepRecipients:Ljava/lang/String;
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1561
    return-void
.end method

.method private prepareForSave(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 956
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    .line 957
    return-void
.end method

.method private prepareForSave(ZZ)V
    .locals 1
    .parameter "notify"
    .parameter "removeSubject"

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients(Z)V

    .line 945
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 947
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 948
    if-eqz p2, :cond_0

    .line 949
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 950
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeAttachmentIfEmpty(Z)V

    .line 951
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeLengthMMSIfNotOver(Z)V

    .line 953
    :cond_1
    return-void
.end method

.method private static readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1762
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    const-string v0, "readDraftMmsMessage tid=%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1769
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1775
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1776
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1778
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    .line 1779
    if-eqz v2, :cond_1

    .line 1780
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1788
    :goto_0
    return-object v0

    .line 1785
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 1788
    goto :goto_0

    .line 1785
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, ""

    .line 1917
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1918
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1919
    const-string v2, "readDraftSmsMessage tid=%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1922
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1923
    const-string v0, ""

    move-object v0, v9

    .line 1958
    :goto_0
    return-object v0

    .line 1926
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1927
    const-string v0, ""

    .line 1929
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1932
    if-eqz v0, :cond_5

    .line 1934
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1935
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v2, v1

    move v1, v8

    .line 1939
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    move-object v1, v2

    .line 1946
    :goto_2
    if-eqz v0, :cond_3

    .line 1952
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;)V

    :cond_2
    :goto_3
    move-object v0, v1

    .line 1958
    goto :goto_0

    .line 1939
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1953
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1954
    const-string v0, "readDraftSmsMessage calling clearThreadId"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1955
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    goto :goto_3

    :cond_4
    move v1, v7

    move-object v2, v9

    goto :goto_1

    :cond_5
    move v0, v7

    move-object v1, v9

    goto :goto_2
.end method

.method private removeAttachmentIfEmpty(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 927
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 928
    return-void
.end method

.method private removeLengthMMSIfNotOver(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 932
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 933
    return-void
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 923
    :cond_0
    return-void
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1587
    const/4 v7, 0x0

    .line 1589
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1591
    if-eqz v0, :cond_2

    .line 1592
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    .line 1594
    const-wide/16 v3, 0x0

    .line 1595
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1596
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    .line 1598
    :cond_0
    cmp-long v1, v3, v1

    if-ltz v1, :cond_2

    .line 1599
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 1600
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1605
    if-eqz v0, :cond_1

    .line 1606
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1701
    :cond_1
    :goto_1
    return-void

    .line 1605
    :cond_2
    if-eqz v0, :cond_3

    .line 1606
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1609
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1613
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v0

    .line 1615
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1624
    :cond_4
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/model/SlideModel;

    .line 1625
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/model/MediaModel;

    .line 1626
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 1627
    const/4 v5, 0x0

    move v8, v5

    move-object v5, v4

    move v4, v8

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 1628
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-lt v6, v7, :cond_6

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7e

    if-le v6, v7, :cond_7

    .line 1629
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 1627
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1605
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_8

    .line 1606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 1632
    :cond_9
    invoke-virtual {p1, v5}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_2

    .line 1635
    :cond_a
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v2

    if-lez v2, :cond_e

    .line 1636
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1637
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/model/AttachmentModel;

    .line 1638
    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 1639
    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_d

    .line 1640
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_b

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7e

    if-le v5, v6, :cond_c

    .line 1641
    :cond_b
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 1639
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1644
    :cond_d
    invoke-virtual {p1, v4}, Lcom/android/mms/model/AttachmentModel;->setSrc(Ljava/lang/String;)V

    goto :goto_5

    .line 1649
    :cond_e
    if-nez p2, :cond_f

    .line 1651
    invoke-static {p3, p5, p4}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v2

    .line 1652
    if-eqz v2, :cond_1

    .line 1661
    :goto_7
    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 1666
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    if-le v3, v4, :cond_10

    .line 1668
    const/4 v3, 0x0

    .line 1670
    :try_start_2
    invoke-virtual {p4, v2}, Lcom/android/mms/model/SlideshowModel;->finalResize(Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1676
    :goto_8
    if-eqz v3, :cond_10

    .line 1677
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;)V

    .line 1678
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentError(I)V

    goto/16 :goto_1

    .line 1657
    :cond_f
    invoke-static {p2, p3, p4, p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    move-object v2, p2

    goto :goto_7

    .line 1671
    :catch_0
    move-exception v3

    .line 1672
    const/4 v3, -0x2

    .line 1675
    goto :goto_8

    .line 1673
    :catch_1
    move-exception v3

    .line 1674
    const/4 v3, -0x1

    goto :goto_8

    .line 1682
    :cond_10
    new-instance v3, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1685
    :try_start_3
    invoke-interface {v3, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1688
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1692
    :cond_11
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1697
    :goto_9
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    goto/16 :goto_1

    .line 1693
    :catch_2
    move-exception v3

    .line 1694
    const-string v4, "Mms/WorkingMessage"

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

    goto :goto_9

    .line 1605
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_4
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1564
    const-string v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1565
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    const-string v0, "sendSmsWorker sending message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1568
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 1570
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 1573
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1579
    return-void

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1358
    if-nez p0, :cond_0

    .line 1359
    const-string v1, "<none>"

    .line 1374
    :goto_0
    return-object v1

    .line 1361
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    .local v0, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1363
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1365
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1367
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1369
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1371
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 3

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 909
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private syncTextToSlideshow()V
    .locals 6

    .prologue
    .line 877
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 882
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-nez v2, :cond_2

    .line 884
    new-instance v1, Lcom/android/mms/model/TextModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v3, "text/plain"

    const-string v4, "cid:text_0.txt"

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 886
    .local v1, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 891
    :goto_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 892
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 889
    .end local v1           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .restart local v1       #text:Lcom/android/mms/model/TextModel;
    goto :goto_1

    .line 893
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 894
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 1851
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
    const-string v0, "syncUpdateDraftMmsMessage conv=%s mMessageUri=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1856
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1858
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 1859
    invoke-virtual {p1, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1860
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 1861
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1867
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1868
    return-void

    .line 1863
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_0
.end method

.method private syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 3
    .parameter "conv"
    .parameter "contents"

    .prologue
    .line 1993
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v0

    .line 1994
    .local v0, threadId:J
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1995
    invoke-direct {p0, v0, v1, p2}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;)V

    .line 1996
    return-void
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "Mms/WorkingMessage"

    .line 1871
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    const-string v0, "updateDraftMmsMessage uri=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1874
    :cond_0
    if-nez p0, :cond_1

    .line 1875
    const-string v0, "Mms/WorkingMessage"

    const-string v0, "updateDraftMmsMessage null uri"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :goto_0
    return-void

    .line 1882
    :cond_1
    :try_start_0
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1893
    :try_start_1
    invoke-virtual {p1, p0, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1898
    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    const-string v1, "Mms/WorkingMessage"

    const-string v1, "updateDraftMmsMessage. Failed to call updateHeaders"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1894
    :catch_1
    move-exception v1

    .line 1895
    const-string v1, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateDraftSmsMessage(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x2

    .line 1999
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    const-string v0, "updateDraftSmsMessage tid=%d, contents=\"%s\""

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2004
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 2014
    :goto_0
    return-void

    .line 2008
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2009
    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2010
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    const-string v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2012
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2013
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    goto :goto_0
.end method

.method private updateState(IZZ)V
    .locals 8
    .parameter "state"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1385
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v1, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1393
    .local v0, oldState:I
    if-eqz p2, :cond_6

    .line 1394
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1401
    :goto_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v1, v7, :cond_2

    and-int/lit8 v1, v0, -0x11

    if-lez v1, :cond_2

    .line 1402
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1404
    :cond_2
    if-ne p1, v7, :cond_3

    if-eqz p2, :cond_3

    .line 1405
    sput-boolean v5, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 1409
    :cond_3
    if-eqz p3, :cond_4

    .line 1410
    if-nez v0, :cond_7

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v1, :cond_7

    .line 1411
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1417
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 1418
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    .line 1419
    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1422
    :cond_5
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v0, v1, :cond_0

    .line 1423
    const-string v1, "Mms:app"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "updateState: %s%s = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_8

    const-string v3, "+"

    :goto_3
    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1396
    :cond_6
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    .line 1412
    :cond_7
    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_4

    .line 1413
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    .line 1423
    :cond_8
    const-string v3, "-"

    goto :goto_3
.end method


# virtual methods
.method public addWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 11
    .parameter "numbers"

    .prologue
    .line 1255
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1257
    .local v3, existedRecipients:Lcom/android/mms/data/ContactList;
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1258
    :cond_0
    new-instance v8, Lcom/android/mms/data/ContactList;

    invoke-direct {v8}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1259
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    .line 1260
    .local v7, number:Lcom/android/mms/data/Contact;
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1261
    invoke-virtual {v3, v7}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v9, v8}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1286
    .end local v7           #number:Lcom/android/mms/data/Contact;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1287
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const-string v8, "Mms/WorkingMessage"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    .end local v1           #e:Ljava/lang/CloneNotSupportedException;
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->clear()V

    .line 1290
    return-void

    .line 1265
    .restart local v7       #number:Lcom/android/mms/data/Contact;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 1266
    .local v2, existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1268
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v9, v8}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1274
    .end local v2           #existedRecipient:Lcom/android/mms/data/Contact;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #number:Lcom/android/mms/data/Contact;
    :cond_5
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->clone()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/mms/data/ContactList;

    move-object v3, v0

    .line 1275
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    .line 1276
    .restart local v7       #number:Lcom/android/mms/data/Contact;
    const/4 v6, 0x0

    .line 1277
    .local v6, isAdded:I
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 1278
    .restart local v2       #existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1280
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1282
    .end local v2           #existedRecipient:Lcom/android/mms/data/Contact;
    :cond_8
    if-nez v6, :cond_6

    .line 1283
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v9, v8}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public checkIfAddressContainsEmailToMms(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1485
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1486
    const/4 v0, 0x0

    .line 1487
    .local v0, dests:[Ljava/lang/String;
    if-nez p1, :cond_4

    .line 1488
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1518
    .end local v0           #dests:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1491
    .restart local v0       #dests:[Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1496
    :goto_1
    array-length v2, v0

    .line 1497
    .local v2, length:I
    const/4 v5, 0x0

    .line 1498
    .local v5, requiresMms:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 1499
    aget-object v7, v0, v1

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v0, v1

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1500
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1501
    .local v6, s:Ljava/lang/StringBuffer;
    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1502
    .local v3, mtext:Ljava/lang/String;
    invoke-static {v3, v10}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 1503
    .local v4, params:[I
    aget v7, v4, v10

    if-le v7, v9, :cond_5

    .line 1504
    const/4 v5, 0x1

    .line 1509
    .end local v3           #mtext:Ljava/lang/String;
    .end local v4           #params:[I
    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_3
    if-eqz v5, :cond_6

    .line 1510
    invoke-direct {p0, v9, v9, v9}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1511
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1512
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_0

    .line 1493
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v5           #requiresMms:Z
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 1494
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dests:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .restart local v0       #dests:[Ljava/lang/String;
    goto :goto_1

    .line 1498
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v5       #requiresMms:Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1515
    :cond_6
    invoke-direct {p0, v9, v10, v9}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public checkValidMessage()Z
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v4, 0x0

    const-string v0, "Mms"

    .line 1014
    const/4 v10, 0x1

    .line 1015
    .local v10, retVal:Z
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->CHECK_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1019
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1020
    :cond_0
    const/4 v10, 0x0

    .line 1021
    const-string v0, "Mms"

    const-string v1, "contaminated message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 1040
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1045
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    iput-wide v11, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    .line 1046
    return v10

    .line 1023
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_1

    .line 1024
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1031
    .local v8, date:J
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 1032
    const/4 v10, 0x0

    .line 1033
    const-string v0, "Mms"

    const-string v1, "contaminated message : I check the saved time..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1039
    .end local v8           #date:J
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1040
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public correctAttachmentState(Z)V
    .locals 7
    .parameter "notify"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 274
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 278
    .local v1, slideCount:I
    if-nez v1, :cond_2

    .line 280
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v2

    if-lez v2, :cond_1

    .line 281
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 308
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    invoke-direct {p0, v6, v2, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 309
    return-void

    .line 283
    :cond_1
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 284
    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 285
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    .line 288
    :cond_2
    if-le v1, v5, :cond_3

    .line 289
    iput v6, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 291
    :cond_3
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 292
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 294
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 296
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method public declared-synchronized discard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1157
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "discard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    .line 1174
    :goto_0
    monitor-exit p0

    return-void

    .line 1166
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1169
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 2080
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    return v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWorkingRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideMedia()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 791
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubjectField()Z
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLengthRequiresMMS()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 798
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->mEncodingType:I

    .line 799
    .local v0, encodingType:I
    const/4 v2, 0x0

    .line 800
    .local v2, params:[I
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 802
    if-nez v0, :cond_0

    .line 803
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 804
    .local v1, isKoreanChar:Z
    if-eqz v1, :cond_0

    .line 805
    const/4 v0, 0x2

    .line 809
    .end local v1           #isKoreanChar:Z
    :cond_0
    if-ne v0, v6, :cond_2

    .line 810
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v5, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    .line 817
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    aget v3, v2, v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v4

    if-lt v3, v4, :cond_4

    move v3, v6

    .line 820
    :goto_1
    return v3

    .line 811
    :cond_2
    if-nez v0, :cond_3

    .line 812
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v5, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_0

    .line 814
    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0

    :cond_4
    move v3, v5

    .line 820
    goto :goto_1
.end method

.method public isPendingSizeOver(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1705
    .line 1707
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1709
    if-eqz v0, :cond_2

    .line 1710
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    .line 1711
    const-wide/16 v3, 0x0

    .line 1712
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1713
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    .line 1715
    :cond_0
    cmp-long v1, v3, v1

    if-ltz v1, :cond_2

    .line 1716
    const v1, 0x7f09013b

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1722
    if-eqz v0, :cond_1

    .line 1723
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    :goto_1
    return v0

    .line 1720
    :cond_2
    const/4 v1, 0x0

    .line 1722
    if-eqz v0, :cond_3

    .line 1723
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1722
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_4

    .line 1723
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1722
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2
.end method

.method public isWorthSaving()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 580
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 591
    :goto_0
    return v0

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 588
    goto :goto_0

    .line 591
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 417
    invoke-static {p2, p1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, recipients:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void
.end method

.method public onSaveCheckDraftInfo()V
    .locals 2

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->getMmsDraftDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    .line 1055
    return-void
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1213
    if-nez p1, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1217
    :cond_0
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, subject:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1220
    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1221
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1222
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1225
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, body:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public reloadAttachement()V
    .locals 1

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    .line 1905
    :cond_0
    return-void
.end method

.method public removeFakeMmsForDraft(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    const/4 v1, 0x0

    .line 975
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-nez v0, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    sput-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 980
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, -0x11

    if-nez v0, :cond_0

    .line 981
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 7
    .parameter "notify"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1063
    const-string v2, "save mConversation=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v2, :cond_0

    .line 1066
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "saveAsMms() IllegalStateException : saveAsMms() called after discard()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1074
    :cond_0
    const/16 v2, 0x10

    invoke-direct {p0, v2, v6, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1077
    invoke-direct {p0, v5, v5}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    .line 1080
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 1081
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v6}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1083
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1084
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1088
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 1089
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1095
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    .line 1097
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v2

    .line 1091
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_0
.end method

.method public saveDraft(Z)V
    .locals 4
    .parameter "sync"

    .prologue
    const/4 v3, 0x0

    .line 1109
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    const-string v1, "saveDraft"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_1

    .line 1154
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_2

    .line 1120
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "saveDraft() called with no conversation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1124
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1127
    if-eqz p1, :cond_4

    .line 1128
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1150
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1153
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/data/WorkingMessage;->mDraftSaveTime:J

    goto :goto_0

    .line 1130
    :cond_4
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    .line 1132
    :cond_5
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1141
    if-eqz p1, :cond_6

    .line 1142
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    goto :goto_1

    .line 1144
    :cond_6
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public send()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1435
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    const-string v0, "send"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1440
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1443
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1444
    .local v3, conv:Lcom/android/mms/data/Conversation;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1446
    .local v8, msgTxt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1451
    .local v4, mmsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 1453
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1454
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    .line 1457
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1476
    .end local v2           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v4           #mmsUri:Landroid/net/Uri;
    .end local v5           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v6           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-static {v0, v1, v9}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 1479
    iput-boolean v10, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1480
    return-void

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1468
    .local v7, msgText:Ljava/lang/String;
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$2;

    invoke-direct {v1, p0, v3, v7}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I
    .locals 15
    .parameter "contentResolver"
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"
    .parameter "checkCRMode"

    .prologue
    .line 481
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 482
    const/4 v4, -0x6

    .line 572
    :goto_0
    return v4

    .line 486
    :cond_0
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    if-eqz p3, :cond_1

    .line 488
    const-string v4, "setAttachment type=%d uri %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_1
    const/4 v12, 0x0

    .line 494
    .local v12, result:I
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 497
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 498
    if-nez p4, :cond_2

    .line 499
    const/16 p4, 0x1

    .line 502
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_6

    .line 503
    const/4 v13, -0x1

    .line 504
    .local v13, size:I
    const/4 v11, 0x0

    .line 505
    .local v11, metaDataCursor:Landroid/database/Cursor;
    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 506
    sget-object v6, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 508
    :cond_3
    if-eqz v11, :cond_5

    .line 510
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 511
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 512
    const-string v4, "Mms/WorkingMessage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor :  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v4

    if-ge v4, v13, :cond_6

    .line 519
    const/4 v12, -0x2

    move v4, v12

    .line 520
    goto/16 :goto_0

    .line 515
    :catchall_0
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 527
    .end local v11           #metaDataCursor:Landroid/database/Cursor;
    .end local v13           #size:I
    :cond_6
    if-eqz p4, :cond_a

    .line 528
    :try_start_1
    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->appendMedia(ILandroid/net/Uri;Z)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_4

    .line 546
    :goto_1
    if-nez v12, :cond_b

    .line 547
    const/4 v4, 0x5

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 548
    move/from16 v0, p2

    move-object v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 552
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 556
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v4, :cond_8

    if-eqz p5, :cond_8

    if-eqz p3, :cond_8

    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-nez v4, :cond_8

    .line 557
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 560
    :cond_8
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 561
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    :cond_9
    :goto_2
    move v4, v12

    .line 572
    goto/16 :goto_0

    .line 530
    :cond_a
    :try_start_2
    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->changeMedia(ILandroid/net/Uri;Z)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 532
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 533
    .local v10, e:Lcom/google/android/mms/MmsException;
    const/4 v12, -0x1

    .line 542
    goto :goto_1

    .line 534
    .end local v10           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v4

    move-object v10, v4

    .line 535
    .local v10, e:Lcom/android/mms/UnsupportContentTypeException;
    const/4 v12, -0x3

    .line 542
    goto :goto_1

    .line 536
    .end local v10           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v4

    move-object v10, v4

    .line 537
    .local v10, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v12, -0x2

    .line 542
    goto :goto_1

    .line 538
    .end local v10           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_3
    move-exception v4

    move-object v10, v4

    .line 539
    .local v10, e:Lcom/android/mms/ResolutionException;
    const/4 v12, -0x4

    .line 542
    goto :goto_1

    .line 540
    .end local v10           #e:Lcom/android/mms/ResolutionException;
    :catch_4
    move-exception v4

    move-object v10, v4

    .line 541
    .local v10, e:Lcom/android/mms/ContentRestrictionException;
    const/4 v12, -0x5

    goto :goto_1

    .line 562
    .end local v10           #e:Lcom/android/mms/ContentRestrictionException;
    :cond_b
    if-eqz p4, :cond_9

    .line 565
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 566
    new-instance v14, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v14, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 567
    .local v14, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v14, v4}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 569
    .end local v14           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_c
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_2
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter "conv"

    .prologue
    const/4 v3, 0x0

    .line 1303
    const-string v0, "setConversation %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1308
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1309
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 11
    .parameter "hasEmail"
    .parameter "notify"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1316
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1317
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    .line 1318
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, msgTxt:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v7, :cond_2

    .line 1320
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, dests:[Ljava/lang/String;
    array-length v2, v0

    .line 1323
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1324
    aget-object v7, v0, v1

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v0, v1

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1325
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1326
    .local v6, s:Ljava/lang/StringBuffer;
    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1327
    .local v4, mtext:Ljava/lang/String;
    invoke-static {v4, v10}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v5

    .line 1328
    .local v5, params:[I
    aget v7, v5, v10

    if-le v7, v9, :cond_1

    .line 1329
    invoke-direct {p0, v9, v9, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1340
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #msgTxt:Ljava/lang/String;
    .end local v4           #mtext:Ljava/lang/String;
    .end local v5           #params:[I
    .end local v6           #s:Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 1323
    .restart local v0       #dests:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #msgTxt:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #msgTxt:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v9, v10, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_1

    .line 1338
    :cond_3
    invoke-direct {p0, v9, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_1
.end method

.method public setLengthRequiresMms(Z)V
    .locals 2
    .parameter "mmsRequired"

    .prologue
    .line 1354
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1355
    return-void
.end method

.method public setRecipients(Ljava/lang/String;)V
    .locals 0
    .parameter "recipients"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRecipeints:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "s"
    .parameter "notify"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 849
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 850
    return-void

    .line 849
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 439
    return-void
.end method

.method public setWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 5
    .parameter "numbers"

    .prologue
    .line 1237
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1239
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1240
    .local v0, c:Lcom/android/mms/data/Contact;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1242
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1243
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const-string v3, "Mms/WorkingMessage"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    .end local v1           #e:Ljava/lang/CloneNotSupportedException;
    :cond_0
    return-void
.end method

.method public syncWorkingRecipients(Z)V
    .locals 2
    .parameter "bClearList"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 965
    if-eqz p1, :cond_0

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 969
    :cond_0
    return-void
.end method

.method public unDiscard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1177
    const-string v0, "unDiscard"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1180
    return-void
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1201
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1205
    :cond_1
    :goto_0
    return-void

    .line 1202
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
