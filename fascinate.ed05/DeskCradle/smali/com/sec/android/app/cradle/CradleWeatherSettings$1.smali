.class Lcom/sec/android/app/cradle/CradleWeatherSettings$1;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 306
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, searchintent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #searchintent:Landroid/content/Intent;
    const-string v1, "com.sec.android.widgetapp.infoalarm.activity.settings.SearchSelectCityA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v0       #searchintent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->removeDialog(I)V

    .line 311
    return-void
.end method
