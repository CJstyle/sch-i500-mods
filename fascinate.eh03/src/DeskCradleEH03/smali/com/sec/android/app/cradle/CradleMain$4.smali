.class Lcom/sec/android/app/cradle/CradleMain$4;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleMain;->startGetDefaultCityWeather()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1946
    const-string v0, "CradleMain"

    const-string v1, "onFail Runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleMain;->access$702(Z)Z

    .line 1949
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v0}, Lcom/sec/android/app/cradle/CradleMain;->access$1100(Lcom/sec/android/app/cradle/CradleMain;)V

    .line 1950
    return-void
.end method
