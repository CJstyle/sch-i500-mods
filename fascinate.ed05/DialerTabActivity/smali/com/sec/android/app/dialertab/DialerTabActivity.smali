.class public Lcom/sec/android/app/dialertab/DialerTabActivity;
.super Landroid/app/TabActivity;
.source "DialerTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final EXTRA_IGNORE_STATE:Ljava/lang/String; = "ignore-state"

.field public static IS_QWERTY:Z = false

.field static final PREFS_DIALER:Ljava/lang/String; = "dialer"

.field static final PREF_FAVORITES_AS_CONTACTS:Ljava/lang/String; = "favorites_as_contacts"

.field static final PREF_FAVORITES_AS_CONTACTS_DEFAULT:Z = false

.field private static final TAB_INDEX_CALL_LOG:I = 0x1

.field private static final TAB_INDEX_DIALER:I = 0x0

.field private static final TAB_INDEX_FREQUENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Dailtacts"

.field public static VT_ENABLE:Z

.field private static final defaultThreadPriority:I

.field public static m24TimeFormat:Z

.field public static mDateFormat:Ljava/lang/String;

.field private static mStarted:Z

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mContactButton:Landroid/widget/RelativeLayout;

.field private mDeckReceiver:Landroid/content/BroadcastReceiver;

.field private mDialUri:Landroid/net/Uri;

.field private mFilterText:Ljava/lang/String;

.field private mGetTypeCallLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sput-boolean v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->VT_ENABLE:Z

    .line 105
    sput-boolean v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->IS_QWERTY:Z

    .line 106
    sput-boolean v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->m24TimeFormat:Z

    .line 107
    const-string v0, "MM-dd-yyyy"

    sput-object v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    .line 113
    sput-boolean v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mStarted:Z

    .line 114
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->defaultThreadPriority:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mGetTypeCallLog:Z

    .line 118
    new-instance v0, Lcom/sec/android/app/dialertab/DialerTabActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/DialerTabActivity$1;-><init>(Lcom/sec/android/app/dialertab/DialerTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDeckReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 285
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setIntent(Landroid/content/Intent;)V

    .line 290
    :cond_0
    return-void
.end method

.method public static getCurrentThreadPriority()I
    .locals 1

    .prologue
    .line 608
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    return v0
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 454
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 464
    :goto_0
    return v2

    .line 458
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 460
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_1

    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 461
    goto :goto_0

    .line 464
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLauncherIntent(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, action:Ljava/lang/String;
    const/4 v4, 0x0

    .line 474
    .local v4, isLauncherIntent:Z
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 477
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 478
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 479
    .local v2, check:Ljava/lang/String;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    const/4 v4, 0x1

    .line 481
    const-string v5, "Dailtacts"

    const-string v6, "isLauncherIntent is true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v1           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #check:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    return v4
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .parameter "intent"
    .parameter "recentCallsRequest"

    .prologue
    const/4 v5, 0x0

    .line 346
    if-eqz p2, :cond_0

    .line 347
    const-string v3, "call_key"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 350
    .local v0, callKey:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 351
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    const/4 v3, 0x1

    .line 359
    .end local v0           #callKey:Z
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v3

    .line 354
    .restart local v0       #callKey:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 355
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Dailtacts"

    const-string v4, "Failed to handle send while in call"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #callKey:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    move v3, v5

    .line 359
    goto :goto_0
.end method

.method public static isStarted()Z
    .locals 1

    .prologue
    .line 612
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mStarted:Z

    return v0
.end method

.method public static raiseThreadPriority()V
    .locals 2

    .prologue
    const/16 v1, -0x13

    .line 593
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mStarted:Z

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mStarted:Z

    .line 595
    sget v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->defaultThreadPriority:I

    if-eq v0, v1, :cond_0

    .line 596
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 598
    :cond_0
    return-void
.end method

.method public static resetThreadPriority()V
    .locals 2

    .prologue
    .line 601
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 602
    .local v0, currentThreadPriority:I
    sget v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->defaultThreadPriority:I

    if-eq v0, v1, :cond_0

    .line 603
    sget v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->defaultThreadPriority:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 605
    :cond_0
    return-void
.end method

.method private setContactTab()V
    .locals 6

    .prologue
    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "tab_contacts"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 323
    return-void
.end method

.method public static setCurrentTab(I)V
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 588
    sget-object v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 589
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "ignore-state"

    .line 369
    const-string v3, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 370
    .local v2, recentCallsRequest:Z
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/dialertab/DialerTabActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->finish()V

    .line 436
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 378
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 384
    :cond_1
    const-string v3, "ignore-state"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, componentName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    if-nez v2, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mGetTypeCallLog:Z

    if-eqz v3, :cond_4

    .line 395
    :cond_2
    sget-object v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 427
    :cond_3
    :goto_1
    const-string v3, "ignore-state"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mGetTypeCallLog:Z

    goto :goto_0

    .line 397
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 399
    sget-object v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 401
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 403
    sget-object v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 407
    :cond_6
    sget-object v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1
.end method

.method private setupCallLogTab()V
    .locals 6

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.dialertab.calllog.LogsListActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 299
    sget-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "call_log"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 303
    return-void
.end method

.method private setupDialUri(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDialUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupDialerTab()V
    .locals 6

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.action.TOUCH_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    sget-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "dialer"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 313
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, filter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 518
    iput-object v0, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupFrequentTab()V
    .locals 6

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.dialertab.frequent.FrequentListActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 331
    sget-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "tab_frequent"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 335
    return-void
.end method


# virtual methods
.method public getAndClearDialUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDialUri:Landroid/net/Uri;

    .line 531
    .local v0, dialUri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDialUri:Landroid/net/Uri;

    .line 532
    return-object v0
.end method

.method public getAndClearFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mFilterText:Ljava/lang/String;

    .line 501
    .local v0, filterText:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mFilterText:Ljava/lang/String;

    .line 502
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->moveTaskToBack(Z)Z

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 256
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerTabActivity;->raiseThreadPriority()V

    .line 141
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    sget-boolean v1, Lcom/sec/android/app/dialertab/TransDialerTab;->mTransDialerForceStop:Z

    if-eqz v1, :cond_1

    .line 144
    const-string v1, "Dailtacts"

    const-string v2, "<<<<<<<<<< onCreate stop forcely >>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sput-boolean v3, Lcom/sec/android/app/dialertab/TransDialerTab;->mTransDialerForceStop:Z

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->fixIntent(Landroid/content/Intent;)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->requestWindowFeature(I)Z

    .line 170
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setContentView(I)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 173
    sget-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 176
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mGetTypeCallLog:Z

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setupDialerTab()V

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setupCallLogTab()V

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setContactTab()V

    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setupFrequentTab()V

    .line 187
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 190
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mGetTypeCallLog:Z

    .line 193
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 195
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setupFilterText(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setIntent(Landroid/content/Intent;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->fixIntent(Landroid/content/Intent;)V

    .line 442
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 447
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setupDialUri(Landroid/content/Intent;)V

    .line 450
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDeckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, deckFilter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDeckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 232
    .local v1, modeManager:Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    .line 234
    .local v2, modeType:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 235
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setRequestedOrientation(I)V

    .line 244
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 238
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 241
    :cond_1
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 573
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 574
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 576
    :cond_0
    return-void
.end method

.method public setCurrentTab()V
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 584
    return-void
.end method
