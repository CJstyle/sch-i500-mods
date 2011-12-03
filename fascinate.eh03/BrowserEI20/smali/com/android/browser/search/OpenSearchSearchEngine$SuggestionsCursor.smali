.class Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "OpenSearchSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/search/OpenSearchSearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsCursor"
.end annotation


# instance fields
.field private final mDescriptions:Lorg/json/JSONArray;

.field private final mSuggestions:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "suggestions"
    .parameter "descriptions"

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    .line 232
    iput-object p2, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mDescriptions:Lorg/json/JSONArray;

    .line 233
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mDescriptions:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/browser/search/OpenSearchSearchEngine;->access$000()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/browser/search/OpenSearchSearchEngine;->access$100()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    iget v0, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .parameter "column"

    .prologue
    const-string v4, "OpenSearchSearchEngine"

    const-string v3, "Error"

    .line 247
    iget v1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 248
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 250
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 252
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "OpenSearchSearchEngine"

    const-string v1, "Error"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 254
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 256
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mDescriptions:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/browser/search/OpenSearchSearchEngine$SuggestionsCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 257
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 258
    .restart local v0       #e:Lorg/json/JSONException;
    const-string v1, "OpenSearchSearchEngine"

    const-string v1, "Error"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 260
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 261
    const v1, 0x7f02005d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
