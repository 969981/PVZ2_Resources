.class public interface abstract Lcom/github/gzuliyujiang/oaid/IGetter;
.super Ljava/lang/Object;
.source "IGetter.java"


# virtual methods
.method public abstract onOAIDGetComplete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract onOAIDGetError(Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method
