.class public Lgbsdk/common/host/abpz;
.super Ljava/lang/Object;
.source "FlavorConfig.java"


# static fields
.field public static vA:Ljava/lang/String; = null

.field public static final vB:Ljava/lang/String; = "classes.dex"

.field public static final vC:Ljava/lang/String; = "_robust"

.field public static final vD:Ljava/lang/String; = "robust"

.field public static final vE:Ljava/lang/String; = "patch_sdk_key"

.field public static final vF:Ljava/lang/String; = "patch_total"

.field public static final vG:Ljava/lang/String; = "ies_patch_sdk"

.field public static final vH:Ljava/lang/String; = "com.bytedance.ies.patch.PatchesInfoImpl"

.field public static final vI:Ljava/lang/String; = "patch_sdk_dir"

.field private static final vy:Ljava/lang/String; = "/api/plugin/config/v3/"

.field public static final vz:Ljava/lang/String; = "security.snssdk.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cS()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lgbsdk/common/host/abpz;->vA:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    sget-object v0, Lgbsdk/common/host/abpz;->vA:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "https://security.snssdk.com/api/plugin/config/v3/"

    return-object v0
.end method
