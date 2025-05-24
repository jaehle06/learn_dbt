with source as (
        select * from {{ source('airbnb', 'reviews') }}
  ),
  renamed as (
      select
          *

      from source
  )
  select * from renamed
    