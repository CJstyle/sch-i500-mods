.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const-string v3, ""

    .line 218
    const-string v0, "&lt;"

    const-string v1, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 13
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 63
    const/4 v5, 0x0

    .line 64
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v2, 0x0

    .line 65
    .local v2, index:I
    const/4 v1, 0x0

    .line 66
    .local v1, extention:Ljava/lang/String;
    const/4 v3, 0x0

    .line 67
    .local v3, mimeType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 68
    .local v4, newSrc:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_18

    .line 71
    invoke-static {p1}, Lcom/android/mms/model/MediaModelFactory;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string v5, "cid:"

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cid:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object v7, v5

    .line 99
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    if-nez v7, :cond_17

    .line 101
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    .line 102
    .local v1, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    const-string v2, "."

    .end local v2           #index:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 103
    .local v5, index:I
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, extention:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, mimeType:Ljava/lang/String;
    if-eqz v6, :cond_16

    .line 107
    invoke-virtual {v1, v6}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionListFromMimeType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 109
    .end local v0           #extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_15

    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    .local v0, arrayListSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_15

    .line 113
    const/4 v4, 0x0

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v4           #newSrc:Ljava/lang/String;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .restart local v4       #newSrc:Ljava/lang/String;
    const-string v7, "cid:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 116
    const-string v7, "cid:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    :cond_0
    :goto_2
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 121
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v7, :cond_5

    move-object v0, v4

    .end local v4           #newSrc:Ljava/lang/String;
    .local v0, newSrc:Ljava/lang/String;
    move-object v1, v7

    .line 128
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_3
    if-nez v1, :cond_14

    .line 129
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    .line 130
    .local v7, nTotalParts:I
    const/4 v4, 0x0

    .line 131
    .local v4, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v10, "[^a-zA-Z0-9.]"

    .line 132
    .local v10, pattern:Ljava/lang/String;
    const-string v0, ""

    .end local v0           #newSrc:Ljava/lang/String;
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, newSrc:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v9, v1

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v9, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v12, v4

    .end local v4           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local v12, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    move v4, v0

    .end local v0           #i:I
    .local v4, i:I
    move-object v0, v12

    .end local v12           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local v0, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :goto_4
    if-ge v4, v7, :cond_6

    .line 134
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 135
    .end local v0           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local v11, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 137
    .local v1, contentLocation:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v0, clc:Ljava/lang/String;
    const-string v1, ""

    .end local v1           #contentLocation:[B
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #clc:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 140
    move-object v0, v11

    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v1, v0

    .line 133
    .end local v0           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_5
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    move-object v9, v1

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v9       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object v0, v11

    .end local v11           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local v0, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_4

    .line 74
    .end local v5           #index:I
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #nTotalParts:I
    .end local v8           #newSrc:Ljava/lang/String;
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v10           #pattern:Ljava/lang/String;
    .local v0, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, extention:Ljava/lang/String;
    .local v2, index:I
    .local v3, mimeType:Ljava/lang/String;
    .local v4, newSrc:Ljava/lang/String;
    :cond_1
    const-string v5, "Cid:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Cid:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v7, v5

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_0

    .line 77
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 78
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v5, :cond_3

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 81
    :cond_3
    if-nez v5, :cond_18

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 83
    if-nez v5, :cond_18

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 86
    if-nez v5, :cond_18

    .line 87
    const-string v1, "."

    .end local v1           #extention:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 88
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1       #extention:Ljava/lang/String;
    const/4 v4, 0x0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v4           #newSrc:Ljava/lang/String;
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .restart local v4       #newSrc:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object v7, v5

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_0

    .line 117
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v0, arrayListSize:I
    .local v1, i:I
    .local v2, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, extention:Ljava/lang/String;
    .local v5, index:I
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_4
    const-string v7, "Cid:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    const-string v7, "Cid:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 112
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v1           #i:I
    .local v0, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local v4, i:I
    .local v7, nTotalParts:I
    .restart local v8       #newSrc:Ljava/lang/String;
    .restart local v9       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v10       #pattern:Ljava/lang/String;
    :cond_6
    move-object v0, v2

    .end local v2           #extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v8

    .end local v8           #newSrc:Ljava/lang/String;
    .local v4, newSrc:Ljava/lang/String;
    move-object v1, v3

    .end local v3           #extention:Ljava/lang/String;
    .local v1, extention:Ljava/lang/String;
    move-object v3, v6

    .end local v6           #mimeType:Ljava/lang/String;
    .local v3, mimeType:Ljava/lang/String;
    move v2, v5

    .end local v5           #index:I
    .local v2, index:I
    move-object v5, v9

    .line 149
    .end local v7           #nTotalParts:I
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v10           #pattern:Ljava/lang/String;
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_6
    if-nez v5, :cond_12

    .line 150
    const-string v0, "."

    .end local v0           #extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, mediaSrcIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 152
    .end local v1           #extention:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "."

    .end local v0           #mediaSrcIndex:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, mediaSrc:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 154
    const-string v1, "cid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    .end local v2           #index:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #mediaSrc:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v3, v0

    .line 177
    .end local v0           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_7
    if-nez v3, :cond_10

    .line 178
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 179
    .local v4, partsNum:I
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_8
    if-ge v1, v4, :cond_10

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 181
    .local v5, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_e

    .line 182
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 183
    .local v0, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 184
    .local v2, newFileName:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    .line 185
    const/4 v2, 0x0

    const-string v6, "."

    .end local v2           #newFileName:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #fileName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .local v0, newFileName:Ljava/lang/String;
    move-object v2, v0

    .line 187
    .end local v0           #newFileName:Ljava/lang/String;
    .restart local v2       #newFileName:Ljava/lang/String;
    :cond_7
    move-object v0, p1

    .line 188
    .local v0, mediaSrc:Ljava/lang/String;
    if-eqz p1, :cond_e

    .line 189
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    .line 190
    const/4 v0, 0x0

    const-string v6, "."

    .end local v0           #mediaSrc:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0       #mediaSrc:Ljava/lang/String;
    const-string v6, "cid:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "Cid:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 192
    :cond_8
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_9
    :goto_9
    if-eqz v2, :cond_e

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #mediaSrc:Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 200
    move-object p0, v5

    .line 210
    .end local v1           #i:I
    .end local v2           #newFileName:Ljava/lang/String;
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #partsNum:I
    .end local v5           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local p0, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_a
    if-eqz p0, :cond_f

    .line 211
    return-object p0

    .line 156
    .restart local v0       #mediaSrc:Ljava/lang/String;
    .local v2, index:I
    .local v3, mimeType:Ljava/lang/String;
    .local v4, newSrc:Ljava/lang/String;
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_a
    const-string v1, "Cid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    .end local v2           #index:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #mediaSrc:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v3, v0

    .end local v0           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_7

    .line 160
    .local v0, mediaSrc:Ljava/lang/String;
    .restart local v2       #index:I
    .local v3, mimeType:Ljava/lang/String;
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    .end local v2           #index:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 161
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v1, :cond_11

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 163
    if-nez v1, :cond_11

    .line 164
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 165
    if-nez v1, :cond_11

    .line 166
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v3, v0

    .end local v0           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_7

    .line 195
    .local v0, mediaSrc:Ljava/lang/String;
    .local v1, i:I
    .local v2, newFileName:Ljava/lang/String;
    .local v4, partsNum:I
    .local v5, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_c
    const-string v6, "cid:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "Cid:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 196
    :cond_d
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 179
    .end local v0           #mediaSrc:Ljava/lang/String;
    .end local v2           #newFileName:Ljava/lang/String;
    :cond_e
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_8

    .line 214
    .end local v1           #i:I
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #partsNum:I
    .end local v5           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local p0, part:Lcom/google/android/mms/pdu/PduPart;
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #part:Lcom/google/android/mms/pdu/PduPart;
    const-string p1, "No part found for the model."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    .restart local p1
    :cond_10
    move-object p0, v3

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_a

    .local v0, mediaSrc:Ljava/lang/String;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, mimeType:Ljava/lang/String;
    .local v4, newSrc:Ljava/lang/String;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_11
    move-object v3, v1

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_7

    .end local v0           #mediaSrc:Ljava/lang/String;
    .local v2, index:I
    .local v3, mimeType:Ljava/lang/String;
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    :cond_12
    move-object v3, v5

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_7

    .local v2, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, extention:Ljava/lang/String;
    .local v4, i:I
    .local v5, index:I
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #nTotalParts:I
    .restart local v8       #newSrc:Ljava/lang/String;
    .restart local v9       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v10       #pattern:Ljava/lang/String;
    .restart local v11       #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_13
    move-object v1, v9

    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_5

    .end local v4           #i:I
    .end local v7           #nTotalParts:I
    .end local v8           #newSrc:Ljava/lang/String;
    .end local v10           #pattern:Ljava/lang/String;
    .end local v11           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    .local v0, newSrc:Ljava/lang/String;
    :cond_14
    move-object v4, v0

    .end local v0           #newSrc:Ljava/lang/String;
    .local v4, newSrc:Ljava/lang/String;
    move-object v0, v2

    .end local v2           #extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v2, v5

    .end local v5           #index:I
    .local v2, index:I
    move-object v5, v1

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v1, v3

    .end local v3           #extention:Ljava/lang/String;
    .local v1, extention:Ljava/lang/String;
    move-object v3, v6

    .end local v6           #mimeType:Ljava/lang/String;
    .local v3, mimeType:Ljava/lang/String;
    goto/16 :goto_6

    .end local v0           #extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #extention:Ljava/lang/String;
    .local v2, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, extention:Ljava/lang/String;
    .local v5, index:I
    .restart local v6       #mimeType:Ljava/lang/String;
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    :cond_15
    move-object v0, v4

    .end local v4           #newSrc:Ljava/lang/String;
    .local v0, newSrc:Ljava/lang/String;
    move-object v1, v7

    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_3

    .end local v2           #extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    .restart local v4       #newSrc:Ljava/lang/String;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_16
    move-object v1, v3

    .end local v3           #extention:Ljava/lang/String;
    .local v1, extention:Ljava/lang/String;
    move v2, v5

    .end local v5           #index:I
    .local v2, index:I
    move-object v3, v6

    .end local v6           #mimeType:Ljava/lang/String;
    .local v3, mimeType:Ljava/lang/String;
    move-object v5, v7

    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_6

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_17
    move-object v5, v7

    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_6

    :cond_18
    move-object v7, v5

    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_0
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;
    .locals 18
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "sme"
    .parameter "part"
    .parameter "regionModel"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    .line 253
    .local v5, bytes:[B
    if-nez v5, :cond_0

    .line 254
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Content-Type of the part may not be null."

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 258
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 259
    .local v7, contentType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 260
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    if-eqz v5, :cond_f

    .line 264
    new-instance v10, Lcom/android/mms/drm/DrmWrapper;

    move-object v0, v10

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V

    .line 265
    .local v10, wrapper:Lcom/android/mms/drm/DrmWrapper;
    const-string v5, "text"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 266
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 334
    .end local v10           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .end local p4
    .end local p5
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    const/16 p0, 0x0

    .line 335
    .local p0, begin:I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object p4

    .line 336
    .local p4, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result p2

    .end local p2
    if-lez p2, :cond_1

    .line 338
    const/16 p0, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    .end local p0           #begin:I
    move-result-object p0

    .line 339
    .local p0, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 p0, v0

    .line 341
    .local p0, begin:I
    :cond_1
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 344
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result p2

    const/high16 p5, 0x447a

    mul-float p2, p2, p5

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 p2, v0

    .line 345
    .local p2, duration:I
    if-gtz p2, :cond_1a

    .line 346
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object p5

    .line 347
    .end local p4           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p5, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz p5, :cond_19

    invoke-interface/range {p5 .. p5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result p4

    if-lez p4, :cond_19

    .line 349
    const/16 p4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object p4

    .line 350
    .local p4, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v6

    if-eqz v6, :cond_19

    .line 351
    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 p2, v0

    sub-int p0, p2, p0

    .line 353
    .end local p2           #duration:I
    .local p0, duration:I
    if-nez p0, :cond_3

    move-object v0, v5

    instance-of v0, v0, Lcom/android/mms/model/AudioModel;

    move/from16 p2, v0

    if-nez p2, :cond_2

    move-object v0, v5

    instance-of v0, v0, Lcom/android/mms/model/VideoModel;

    move/from16 p2, v0

    if-eqz p2, :cond_3

    .line 355
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result p0

    .line 356
    const-string p2, "Mms:app"

    const/16 p4, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local p4           #t:Lorg/w3c/dom/smil/Time;
    move-result p2

    if-eqz p2, :cond_3

    .line 357
    const-string p2, "Mms/media"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct/range {p4 .. p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] compute new duration for "

    move-object/from16 v0, p4

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string p4, ", duration="

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 p1, p5

    .line 365
    .end local p5           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    :goto_1
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 366
    .local p1, type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 367
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object p1

    .end local p1           #type:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 369
    .restart local p1       #type:Ljava/lang/String;
    :cond_4
    move-object v0, v5

    instance-of v0, v0, Lcom/android/mms/model/ImageModel;

    move/from16 p2, v0

    if-eqz p2, :cond_5

    const-string p2, "image/gif"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .end local p1           #type:Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 370
    invoke-virtual {v5, v5}, Lcom/android/mms/model/MediaModel;->getImageDuration(Lcom/android/mms/model/MediaModel;)I

    move-result p0

    .line 371
    move/from16 v0, p0

    move/from16 v1, p6

    if-ge v0, v1, :cond_5

    .line 372
    move/from16 p0, p6

    .line 375
    :cond_5
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 378
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result p0

    .end local p0           #duration:I
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 379
    return-object v5

    .line 268
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v10       #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .local p0, context:Landroid/content/Context;
    .local p1, tag:Ljava/lang/String;
    .local p2, src:Ljava/lang/String;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :cond_6
    const-string v5, "img"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 269
    new-instance v5, Lcom/android/mms/model/ImageModel;

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 271
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    const-string v5, "video"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 272
    new-instance v5, Lcom/android/mms/model/VideoModel;

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 274
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_8
    const-string v5, "audio"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 275
    new-instance v5, Lcom/android/mms/model/AudioModel;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 277
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_9
    const-string v5, "ref"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 278
    invoke-virtual {v10}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, drmContentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 280
    new-instance v5, Lcom/android/mms/model/TextModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 282
    .local v5, drmContentType:Ljava/lang/String;
    :cond_a
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result p4

    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz p4, :cond_b

    .line 283
    new-instance v5, Lcom/android/mms/model/ImageModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 285
    .local v5, drmContentType:Ljava/lang/String;
    :cond_b
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 286
    new-instance v5, Lcom/android/mms/model/VideoModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 288
    .local v5, drmContentType:Ljava/lang/String;
    :cond_c
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 289
    new-instance v5, Lcom/android/mms/model/AudioModel;

    .end local v5           #drmContentType:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 292
    .local v5, drmContentType:Ljava/lang/String;
    :cond_d
    new-instance p0, Lcom/android/mms/UnsupportContentTypeException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #tag:Ljava/lang/String;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported Content-Type: "

    .end local p2           #src:Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    .end local v5           #drmContentType:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p4       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #src:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TAG: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #tag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    .end local v10           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p3
    :cond_f
    const-string v5, "text"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 300
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .local v5, media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 302
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_10
    const-string v5, "img"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 303
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 305
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_11
    const-string v5, "video"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 306
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 308
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_12
    const-string v5, "audio"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 309
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object p4

    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 311
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local p4       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_13
    const-string v5, "ref"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 312
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 313
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 315
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_14
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 316
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 318
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_15
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 319
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 321
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_16
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result p5

    .end local p5           #regionModel:Lcom/android/mms/model/RegionModel;
    if-eqz p5, :cond_17

    .line 322
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object p4

    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 325
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local p4       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_17
    new-instance p0, Lcom/android/mms/UnsupportContentTypeException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #tag:Ljava/lang/String;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported Content-Type: "

    .end local p2           #src:Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p5       #regionModel:Lcom/android/mms/model/RegionModel;
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #src:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TAG: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #tag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .end local p4           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    .local p0, begin:I
    .restart local p1       #tag:Ljava/lang/String;
    .local p2, duration:I
    .restart local p3
    .local p5, tl:Lorg/w3c/dom/smil/TimeList;
    :cond_19
    move/from16 p0, p2

    .end local p2           #duration:I
    .local p0, duration:I
    move-object/from16 p1, p5

    .end local p5           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    goto/16 :goto_1

    .local p0, begin:I
    .local p1, tag:Ljava/lang/String;
    .restart local p2       #duration:I
    .local p4, tl:Lorg/w3c/dom/smil/TimeList;
    :cond_1a
    move/from16 p0, p2

    .end local p2           #duration:I
    .local p0, duration:I
    move-object/from16 p1, p4

    .end local p4           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    goto/16 :goto_1
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;
    .locals 15
    .parameter "context"
    .parameter "sme"
    .parameter "layouts"
    .parameter "pb"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, tag:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, src:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 53
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move/from16 p3, v0

    .end local p3
    if-eqz p3, :cond_0

    .line 54
    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v5, v0

    move-object v2, p0

    move-object/from16 v6, p2

    move/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;I)Lcom/android/mms/model/MediaModel;

    move-result-object p0

    .line 57
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p1

    move-object v12, v7

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object p0

    goto :goto_0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;I)Lcom/android/mms/model/MediaModel;
    .locals 9
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "srme"
    .parameter "layouts"
    .parameter "part"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v8

    .line 226
    .local v8, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v8, :cond_0

    .line 227
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 228
    .local v5, region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 229
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 232
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v7, 0x0

    .line 234
    .local v7, rId:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v7, "Text"

    .line 240
    :goto_1
    invoke-virtual {p4, v7}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 241
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 242
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 237
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v7, "Image"

    goto :goto_1

    .line 246
    .end local v7           #rId:Ljava/lang/String;
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
