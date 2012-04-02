.class Lcom/sec/android/app/cradle/CradleWeatherSettings$5;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    .local v0, searchintent:Landroid/content/Intent;
    const-string v1, "com.sec.android.widgetapp.infoalarm"

    const-string v2, "com.sec.android.widgetapp.infoalarm.activity.settings.SearchSelectCityA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 397
    return-void
.end method
