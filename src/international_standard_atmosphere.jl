function isa_lapse_rate(height::AbstractFloat)
    scalar = typeof(height)

    if 0 <= height < 11000
       return scalar(-0.0065)
    elseif 11000 <= height < 20000
        return scalar(0.0)
    elseif 20000 <= height < 32000
        return scalar(0.001)
    elseif 32000 <= height < 47000
        return scalar(0.0028)
    elseif 47000 <= height < 51000
        return scalar(0.0)
    elseif 51000 <= height < 71000
        return scalar(-0.0028)
    elseif 71000 <= height < 86000
        return scalar(-0.002)
    else
        return scalar(0.0)
    end
end
