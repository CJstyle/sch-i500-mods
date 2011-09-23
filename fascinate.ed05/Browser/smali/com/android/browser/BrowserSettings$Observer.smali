.class Lcom/android/browser/BrowserSettings$Observer;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Observer"
.end annotation


# instance fields
.field private mSettings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0
    .parameter "w"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 191
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/android/browser/BrowserSettings;

    move-object v1, v0

    .line 195
    .local v1, b:Lcom/android/browser/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 197
    .local v2, s:Landroid/webkit/WebSettings;
    iget-object v3, v1, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 198
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    if-nez v3, :cond_1

    .line 200
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 207
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 208
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 209
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$400(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 210
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 212
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$700()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 214
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 215
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$900()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 216
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1000()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 217
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 218
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1200()Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 219
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1300()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 220
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 221
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 222
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1600(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 223
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1700(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 224
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1800()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 227
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 229
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 231
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 234
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1900(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 235
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2000(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 236
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 237
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 238
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 241
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2400(Lcom/android/browser/BrowserSettings;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 242
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2500(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 243
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 244
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 246
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2800(Lcom/android/browser/BrowserSettings;)V

    .line 247
    return-void

    .line 201
    :cond_1
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 202
    const-string v3, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_2
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 204
    const-string v3, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
