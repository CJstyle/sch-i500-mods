.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

.field final synthetic val$action1:I

.field final synthetic val$intent1:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2653
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    iput p2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$action1:I

    iput-object p3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$intent1:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/high16 v10, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "createErrorDialog - next operation : false -> exit"

    const-string v6, "MoviePlayer"

    .line 2656
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1002(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2660
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1602(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2661
    const-string v4, "MoviePlayer"

    const-string v4, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED 4"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_8

    .line 2668
    const-string v4, "MoviePlayer"

    const-string v4, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED 5"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 2673
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopBufferingChecker()V

    .line 2676
    iget v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$action1:I

    packed-switch v4, :pswitch_data_0

    .line 2730
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 2732
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 2807
    :cond_0
    :goto_0
    return-void

    .line 2679
    :pswitch_0
    const-string v4, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED ,intent data is =: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2681
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2682
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2683
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2684
    const-string v4, "MoviePlayer"

    const-string v4, "In Service specific error, launch Browser with url"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 2687
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2688
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2689
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2690
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoviePlayer"

    const-string v4, "could not find a suitable activity for launching error url"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2695
    .end local v0           #browserIntent:Landroid/content/Intent;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 2697
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_0

    .line 2699
    :cond_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v4

    if-nez v4, :cond_4

    .line 2701
    sget-object v4, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2702
    .local v3, total_list_count:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurIdx()I

    move-result v2

    .line 2703
    .local v2, position:I
    const-string v4, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Current :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    if-lt v4, v3, :cond_3

    sub-int v4, v3, v8

    if-ne v2, v4, :cond_3

    .line 2706
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2709
    :cond_3
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2711
    const-string v4, "MoviePlayer"

    const-string v4, "createErrorDialog - next operation : false -> exit"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2720
    .end local v2           #position:I
    .end local v3           #total_list_count:I
    :cond_4
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2722
    const-string v4, "MoviePlayer"

    const-string v4, "createErrorDialog - next operation : false -> exit"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2734
    :cond_5
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getRepeatType()I

    move-result v4

    if-nez v4, :cond_7

    .line 2736
    sget-object v4, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2737
    .restart local v3       #total_list_count:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurIdx()I

    move-result v2

    .line 2738
    .restart local v2       #position:I
    const-string v4, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Current :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    if-lt v4, v3, :cond_6

    sub-int v4, v3, v8

    if-ne v2, v4, :cond_6

    .line 2741
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2744
    :cond_6
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2746
    const-string v4, "MoviePlayer"

    const-string v4, "createErrorDialog - next operation : false -> exit"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2755
    .end local v2           #position:I
    .end local v3           #total_list_count:I
    :cond_7
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2757
    const-string v4, "MoviePlayer"

    const-string v4, "createErrorDialog - next operation : false -> exit"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2774
    :cond_8
    const-string v4, "MoviePlayer"

    const-string v4, "OK clicked, ELSE part"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    iget v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$action1:I

    packed-switch v4, :pswitch_data_1

    .line 2799
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2778
    :pswitch_1
    const-string v4, "MoviePlayer"

    const-string v4, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED OK clicked"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2780
    const-string v4, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED ,intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2782
    .restart local v0       #browserIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2783
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2784
    const-string v4, "MoviePlayer"

    const-string v4, "In Service specific error, launch Browser with url"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 2787
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2788
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2789
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 2790
    .restart local v1       #ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoviePlayer"

    const-string v4, "could not find a suitable activity for launching error url"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2795
    .end local v0           #browserIntent:Landroid/content/Intent;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_0

    .line 2676
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    .line 2775
    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch
.end method
