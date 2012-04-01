.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createLanguagePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 681
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 682
    .local v6, lLanguage:J
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSubTitleDefaultLanguage(J)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v2

    const-wide/16 v4, 0x457

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSetConfig(JJJ)I

    move-result v16

    .line 686
    .local v16, ret:I
    const/4 v2, -0x1

    move/from16 v0, v16

    move v1, v2

    if-ne v0, v1, :cond_0

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "createLanguagePopup() - ARCSubtitleSetConfig fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 706
    :goto_0
    return-void

    .line 692
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v8

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v10, v0

    const-wide/16 v12, 0x0

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSelectTrack(JJJJ)I

    move-result v16

    .line 694
    if-eqz v16, :cond_1

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "createLanguagePopup() - ARCSubtitleSelectTrack fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    const-wide/16 v3, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$102(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;J)J

    goto :goto_0

    .line 702
    :cond_1
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 703
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object v3, v0

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$800(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    goto :goto_0
.end method
