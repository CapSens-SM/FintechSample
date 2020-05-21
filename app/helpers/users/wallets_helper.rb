module Users::WalletsHelper

  def generate_qrcode_for_user_wallet_url
    auth_params  = { profile_token: current_user.profile_token }
    generated_mobile_view_url = mobile_view_users_wallet_url(auth_params)

    qrcode = RQRCode::QRCode.new generated_mobile_view_url

    svg = qrcode.as_svg(
      offset: 0,
      color: 'df5974',
      shape_rendering: 'crispEdges',
      module_size: 6,
      standalone: true,
    )

    return raw svg
  end
  
end