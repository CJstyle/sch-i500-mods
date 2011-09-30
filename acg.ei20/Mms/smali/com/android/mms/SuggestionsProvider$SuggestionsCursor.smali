.class Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/SuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
    }
.end annotation


# instance fields
.field private final INTENT_ACTION_COLUMN:I

.field private final INTENT_DATA_COLUMN:I

.field private final INTENT_EXTRA_DATA_COLUMN:I

.field private final INTENT_TEXT_COLUMN:I

.field mColumnCount:I

.field mCurrentRow:I

.field mDatabaseCursor:Landroid/database/Cursor;

.field mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualColumns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/SuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/android/mms/SuggestionsProvider;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "cursor"
    .parameter "query"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->this$0:Lcom/android/mms/SuggestionsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    .line 224
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "suggest_intent_data"

    aput-object v2, v1, v3

    const-string v2, "suggest_intent_action"

    aput-object v2, v1, v4

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v1, v5

    const-string v2, "suggest_text_1"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    .line 235
    iput v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_DATA_COLUMN:I

    .line 236
    iput v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_ACTION_COLUMN:I

    .line 237
    iput v5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_EXTRA_DATA_COLUMN:I

    .line 238
    iput v6, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->INTENT_TEXT_COLUMN:I

    .line 97
    iput-object p2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .line 99
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->computeRows()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private computeOffsets(Ljava/lang/String;)[I
    .locals 5
    .parameter "offsetsString"

    .prologue
    .line 161
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, vals:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 164
    .local v1, retvals:[I
    array-length v3, v1

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 165
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 164
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 167
    :cond_0
    return-object v1
.end method

.method private computeRows()V
    .locals 15

    .prologue
    .line 132
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 134
    .local v8, got:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v1, "index_text"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 135
    .local v14, textColumn:I
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v1, "offsets(words)"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 137
    .local v13, offsetsColumn:I
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 138
    .local v7, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 140
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->computeOffsets(Ljava/lang/String;)[I

    move-result-object v12

    .line 143
    .local v12, offsets:[I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    array-length v0, v12

    if-ge v9, v0, :cond_1

    .line 146
    add-int/lit8 v0, v9, 0x2

    aget v4, v12, v0

    .line 147
    .local v4, startOffset:I
    add-int/lit8 v0, v9, 0x3

    aget v11, v12, v0

    .line 148
    .local v11, length:I
    add-int v5, v4, v11

    .line 149
    .local v5, endOffset:I
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, candidate:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    .end local v6           #candidate:Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x4

    goto :goto_1

    .line 154
    .restart local v6       #candidate:Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v6, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    .end local v6           #candidate:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;-><init>(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    .end local v4           #startOffset:I
    .end local v5           #endOffset:I
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #length:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v3           #message:Ljava/lang/String;
    .end local v9           #j:I
    .end local v12           #offsets:[I
    :cond_2
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 337
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 341
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 7
    .parameter "position"
    .parameter "window"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getCount()I

    move-result v1

    .line 172
    .local v1, count:I
    if-ltz p1, :cond_0

    add-int/lit8 v6, v1, 0x1

    if-le p1, v6, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getPosition()I

    move-result v4

    .line 178
    .local v4, oldpos:I
    move v5, p1

    .line 179
    .local v5, pos:I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 180
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getColumnCount()I

    move-result v0

    .line 182
    .local v0, columnNum:I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 183
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 184
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, field:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {p2, v2, v5, v3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 188
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 198
    .end local v2           #field:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 192
    .restart local v2       #field:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v5, v3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 193
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 201
    .end local v0           #columnNum:I
    .end local v2           #field:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #oldpos:I
    .end local v5           #pos:I
    :catch_0
    move-exception v6

    .line 204
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 184
    .restart local v0       #columnNum:I
    .restart local v2       #field:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #oldpos:I
    .restart local v5       #pos:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 200
    .end local v2           #field:Ljava/lang/String;
    .end local v3           #i:I
    :cond_5
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .end local v0           #columnNum:I
    .end local v4           #oldpos:I
    .end local v5           #pos:I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    add-int/2addr v1, v0

    .line 251
    :goto_1
    return v1

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 255
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, x:[Ljava/lang/String;
    array-length v3, v1

    iget-object v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/String;

    .line 258
    .local v2, y:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 259
    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 263
    array-length v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_1
    return-object v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 361
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .parameter "column"

    .prologue
    .line 300
    iget v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    if-ge p1, v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    :goto_0
    return-object v2

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    .line 305
    .local v0, row:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
    iget v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    sub-int v2, p1, v2

    packed-switch v2, :pswitch_data_0

    .line 316
    const/4 v2, 0x0

    goto :goto_0

    .line 307
    :pswitch_0
    const-string v2, "content://mms-sms/search"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "pattern"

    invoke-virtual {v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 310
    .end local v1           #u:Landroid/net/Uri;
    :pswitch_1
    const-string v2, "android.intent.action.SEARCH"

    goto :goto_0

    .line 312
    :pswitch_2
    const-string v2, "suggest_text_1"

    invoke-virtual {p0, v2}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 314
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->getWord()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 211
    .local v0, window:Landroid/database/CursorWindow;
    return-object v0
.end method

.method public hasUpdates()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 413
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 280
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 270
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 271
    iput p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    .line 272
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    iget v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 215
    iget-object p0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .end local p0
    check-cast p0, Landroid/database/CrossProcessCursor;

    invoke-interface {p0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 422
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 426
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 438
    return-void
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 446
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 450
    return-void
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method
