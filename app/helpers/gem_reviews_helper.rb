module GemReviewsHelper
  def gem_review_name_link
    link_to(raw(%Q(#{@gem_review.name} <i class="icon-external-link"></i>)), @gem_review.gem_github)
  end

  def gem_review_score_buttons(f, attr_name, val)
    %Q(
      <div class="score-group-radio">
        #{ f.text_field attr_name }
      </div>

      <div class="btn-toolbar" role="toolbar" style="display:none">
        <div class="btn-group">
          <button type="button" class="btn btn-default number-btn#{" active" if val == 1}">1</button>
          <button type="button" class="btn btn-default number-btn#{" active" if val == 2}">2</button>
          <button type="button" class="btn btn-default number-btn#{" active" if val == 3}">3</button>
          <button type="button" class="btn btn-default number-btn#{" active" if val == 4}">4</button>
          <button type="button" class="btn btn-default number-btn#{" active" if val == 5}">5</button>
        </div>
        <div class="btn-group">
          <button type="button" class="btn btn-default clear-btn">Clear</button>
        </div>
      </div>
    ).html_safe
  end
end
