require "rails_helper"

RSpec.describe ModelScanJob, type: :job do
  before :all do
    ActiveJob::Base.queue_adapter = :test
  end

  let(:library) do
    create(:library, path: File.join(Rails.root, "spec", "fixtures", "library"))
  end

  let(:model) do
    create(:model, path: "model_one", library: library)
  end

  it "can scan a library directory" do
    expect { ModelScanJob.perform_now(model) }.to change { model.parts.count }.to(1)
    expect(model.parts.first.filename).to eq "part_one.stl"
  end
end