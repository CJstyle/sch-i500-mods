.class Lcom/android/server/PackageManagerService$PackageSettingBase;
.super Lcom/android/server/PackageManagerService$GrantedPermissions;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageSettingBase"
.end annotation


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enabled:I

.field enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

.field permissionsFixed:Z

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

.field private timeStamp:J

.field private timeStampString:Ljava/lang/String;

.field uidError:Z

.field versionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V
    .locals 2
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 7841
    invoke-direct {p0, p6}, Lcom/android/server/PackageManagerService$GrantedPermissions;-><init>(I)V

    .line 7817
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7822
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7828
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7830
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7831
    iput v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7832
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7842
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    .line 7843
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    .line 7844
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/PackageManagerService$PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;I)V

    .line 7845
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 7892
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    .line 7893
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    .line 7895
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7896
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7897
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7898
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    .line 7899
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    .line 7900
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7901
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7902
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7903
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7904
    return-void
.end method

.method currentEnabledStateLP(Ljava/lang/String;)I
    .locals 1
    .parameter "componentName"

    .prologue
    .line 7925
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7926
    const/4 v0, 0x1

    .line 7930
    :goto_0
    return v0

    .line 7927
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7928
    const/4 v0, 0x2

    goto :goto_0

    .line 7930
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method disableComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7913
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7914
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7915
    return v0
.end method

.method enableComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7907
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7908
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7909
    return v0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 7868
    iget v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7860
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 7884
    iget-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    return-wide v0
.end method

.method public getTimeStampStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7888
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;I)V
    .locals 1
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "pVersionCode"

    .prologue
    .line 7848
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    .line 7849
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 7850
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 7851
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 7852
    iput p3, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    .line 7853
    return-void
.end method

.method restoreComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7919
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7920
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7921
    return v0
.end method

.method public setInstallStatus(I)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 7864
    iput p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7865
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 7856
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 7857
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 2
    .parameter "newStamp"

    .prologue
    .line 7872
    iget-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 7873
    iput-wide p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7874
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7876
    :cond_0
    return-void
.end method

.method public setTimeStamp(JLjava/lang/String;)V
    .locals 0
    .parameter "newStamp"
    .parameter "newStampStr"

    .prologue
    .line 7879
    iput-wide p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7880
    iput-object p3, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7881
    return-void
.end method
