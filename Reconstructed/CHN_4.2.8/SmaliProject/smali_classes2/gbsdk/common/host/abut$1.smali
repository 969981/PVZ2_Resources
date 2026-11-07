.class public final Lgbsdk/common/host/abut$1;
.super Ljava/lang/Object;
.source "CommandResultUploader.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abut;->a(Lgbsdk/common/host/abwh;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aKQ:Lgbsdk/common/host/abut;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abut;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lgbsdk/common/host/abut$1;->aKQ:Lgbsdk/common/host/abut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method
