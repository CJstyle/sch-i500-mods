.class Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;
.super Landroid/os/AsyncTask;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFullDBTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2155
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2155
    check-cast p1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->doInBackground([Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Ljava/lang/Void;
    .locals 7
    .parameter "adapters"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2158
    if-nez p1, :cond_0

    move-object v4, v5

    .line 2171
    :goto_0
    return-object v4

    .line 2159
    :cond_0
    aget-object v0, p1, v6

    .line 2160
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v1

    .line 2161
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2162
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2163
    .local v3, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v3, :cond_1

    .line 2164
    iput-boolean v6, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 2165
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$900(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 2161
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2169
    .end local v3           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_0

    :cond_3
    move-object v4, v5

    .line 2171
    goto :goto_0
.end method
