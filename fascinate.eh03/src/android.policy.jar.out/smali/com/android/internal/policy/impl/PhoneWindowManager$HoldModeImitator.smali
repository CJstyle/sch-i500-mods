.class Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldModeImitator"
.end annotation


# instance fields
.field final ID_ALLSHARE_ACTIVITY:I

.field final ID_CAMERA_ACTIVITY:I

.field final ID_SETTINGS_ACTIVITY:I

.field final ID_VIDEO_ACTIVITY:I

.field mModeHolder:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2663
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2656
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_CAMERA_ACTIVITY:I

    .line 2657
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_VIDEO_ACTIVITY:I

    .line 2658
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_ALLSHARE_ACTIVITY:I

    .line 2659
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_SETTINGS_ACTIVITY:I

    .line 2661
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    .line 2665
    return-void
.end method

.method private getReverse(I)Z
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 2668
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public endOfDetecting()V
    .locals 1

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2808
    return-void
.end method

.method public isHomeNeglecting()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2702
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2703
    .local v2, activityManager:Landroid/app/ActivityManager;
    const/16 v7, 0x14

    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 2704
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v10

    .line 2803
    :goto_0
    return v7

    .line 2708
    :cond_0
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2709
    .local v6, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2710
    .local v5, pkgName:Ljava/lang/String;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2712
    .local v3, className:Ljava/lang/String;
    const-string v7, "com.sec.android.app.camera"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2713
    const-string v7, "com.sec.android.app.camera.Camera"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.sec.android.app.camera.Camcorder"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2714
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    goto :goto_0

    .line 2716
    :cond_2
    const-string v7, "com.sec.android.app.videoplayer"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2717
    const-string v7, "com.sec.android.app.videoplayer.activity.MoviePlayer"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2718
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    goto :goto_0

    .line 2720
    :cond_3
    const-string v7, "com.sec.android.app.dlna"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2721
    const-string v7, "com.samsung.dmp.layout.DMPControlActivity"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.samsung.dmp.layout.DMPVideoActivity"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2722
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    goto :goto_0

    .line 2724
    :cond_5
    const-string v7, "com.android.settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2725
    const-string v7, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v11

    .line 2726
    goto :goto_0

    .line 2790
    :cond_6
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isHomeNeglecting() [2] - pkgName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , className : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    const-string v0, "com.android.samsungtest.FactoryTest"

    .line 2794
    .local v0, PACKAGE_FACTORYTEST:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v11

    .line 2795
    goto/16 :goto_0

    .line 2798
    :cond_7
    const-string v1, "com.sec.android.app.lcdtest"

    .line 2799
    .local v1, PACKAGE_LCDTEST:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v11

    .line 2800
    goto/16 :goto_0

    :cond_8
    move v7, v10

    .line 2803
    goto/16 :goto_0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 8
    .parameter "pkg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2673
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-eqz v2, :cond_1

    .line 2674
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2699
    :cond_0
    :goto_0
    return-void

    .line 2676
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v2, :cond_2

    .line 2677
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions;->isGlobalActionRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2679
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-nez v2, :cond_0

    .line 2684
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2685
    .local v1, sm:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2687
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "menuOpened"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2688
    .local v0, menuStatus:I
    if-eq v0, v5, :cond_0

    .line 2690
    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2691
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2692
    :cond_3
    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2693
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2694
    :cond_4
    const-string v2, "com.sec.android.app.dlna"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2695
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2696
    :cond_5
    const-string v2, "com.android.settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2697
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method public setHomeNeglectingMode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "pkg"
    .parameter "value"

    .prologue
    .line 2811
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2812
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2818
    :cond_0
    :goto_0
    return-void

    .line 2813
    :cond_1
    const-string v0, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2814
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2815
    :cond_2
    const-string v0, "com.sec.android.app.dlna"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2816
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method
