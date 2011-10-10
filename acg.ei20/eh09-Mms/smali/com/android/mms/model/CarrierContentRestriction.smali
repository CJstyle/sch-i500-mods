.class public Lcom/android/mms/model/CarrierContentRestriction;
.super Ljava/lang/Object;
.source "CarrierContentRestriction.java"

# interfaces
.implements Lcom/android/mms/model/ContentRestriction;


# static fields
.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 42
    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getMmsCreationMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 183
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mms_creation_mode"

    const-string v3, "free"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertCreationMode(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, mmsCreationMode:I
    return v0
.end method


# virtual methods
.method public checkAudioContentType(Ljava/lang/String;)V
    .locals 3
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    return-void
.end method

.method public checkAudioCreationMode(Ljava/lang/String;I)V
    .locals 3
    .parameter "contentType"
    .parameter "creationMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Null content type to be check"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    const/4 v0, 0x1

    .line 130
    .local v0, isAllowMedia:Z
    const-string v1, "audio/amr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const/4 v0, 0x1

    .line 136
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 140
    :cond_1
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Unsupported audio content type"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_3
    return-void
.end method

.method public checkImageContentType(Ljava/lang/String;)V
    .locals 3
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported image content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    return-void
.end method

.method public checkImageCreationMode(Ljava/lang/String;I)V
    .locals 3
    .parameter "contentType"
    .parameter "creationMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Null content type to be check"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    const/4 v0, 0x1

    .line 93
    .local v0, isAllowMedia:Z
    const-string v1, "image/jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    :cond_1
    const/4 v0, 0x1

    .line 102
    :goto_0
    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 106
    :cond_2
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "PNG image"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_4
    return-void
.end method

.method public checkMessageSize(IILandroid/content/ContentResolver;)V
    .locals 3
    .parameter "messageSize"
    .parameter "increaseSize"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 51
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 52
    :cond_0
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Negative message size or increase size"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    add-int v0, p1, p2

    .line 57
    .local v0, newSize:I
    if-ltz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 58
    :cond_2
    new-instance v1, Lcom/android/mms/ExceedMessageSizeException;

    const-string v2, "Exceed message size limitation"

    invoke-direct {v1, v2}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_3
    return-void
.end method

.method public checkResolution(II)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "content resolution exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    return-void
.end method

.method public checkVideoContentType(Ljava/lang/String;)V
    .locals 3
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    return-void
.end method

.method public checkVideoCreationMode(Ljava/lang/String;I)V
    .locals 3
    .parameter "contentType"
    .parameter "creationMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Null content type to be check"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    const/4 v0, 0x1

    .line 165
    .local v0, isAllowMedia:Z
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    const/4 v0, 0x1

    .line 171
    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-nez p2, :cond_3

    .line 176
    :cond_1
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "3GPP/MP4 Video > 300KB not allowed"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_3
    return-void
.end method
